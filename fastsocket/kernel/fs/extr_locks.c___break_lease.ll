; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c___break_lease.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c___break_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.inode = type { %struct.file_lock* }
%struct.file_lock = type { i64, i32, i64, %struct.file_lock*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.file_lock*)* }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@F_UNLCK = common dso_local global i32 0, align 4
@F_INPROGRESS = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@lease_break_time = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__break_lease(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca %struct.file_lock*, align 8
  %9 = alloca %struct.file_lock*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @O_ACCMODE, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @F_WRLCK, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @F_RDLCK, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = call %struct.file_lock* @lease_alloc(i32* null, i32 %26)
  store %struct.file_lock* %27, %struct.file_lock** %7, align 8
  %28 = call i32 (...) @lock_kernel()
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = call i32 @time_out_leases(%struct.inode* %29)
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load %struct.file_lock*, %struct.file_lock** %32, align 8
  store %struct.file_lock* %33, %struct.file_lock** %8, align 8
  %34 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %35 = icmp eq %struct.file_lock* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %38 = call i64 @IS_LEASE(%struct.file_lock* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %25
  br label %245

41:                                               ; preds = %36
  %42 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  store %struct.file_lock* %42, %struct.file_lock** %9, align 8
  br label %43

43:                                               ; preds = %62, %41
  %44 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %45 = icmp ne %struct.file_lock* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %48 = call i64 @IS_LEASE(%struct.file_lock* %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %52, label %66

52:                                               ; preds = %50
  %53 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %54 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %60, %52
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %64 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %63, i32 0, i32 3
  %65 = load %struct.file_lock*, %struct.file_lock** %64, align 8
  store %struct.file_lock* %65, %struct.file_lock** %9, align 8
  br label %43

66:                                               ; preds = %50
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @F_UNLCK, align 4
  %71 = load i32, i32* @F_INPROGRESS, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %6, align 4
  br label %98

73:                                               ; preds = %66
  %74 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %75 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @F_INPROGRESS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %82 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %6, align 4
  br label %97

84:                                               ; preds = %73
  %85 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %86 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @F_WRLCK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32, i32* @F_RDLCK, align 4
  %93 = load i32, i32* @F_INPROGRESS, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %6, align 4
  br label %96

95:                                               ; preds = %84
  br label %245

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %80
  br label %98

98:                                               ; preds = %97, %69
  %99 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %100 = call i64 @IS_ERR(%struct.file_lock* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @O_NONBLOCK, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %112 = call i32 @PTR_ERR(%struct.file_lock* %111)
  store i32 %112, i32* %5, align 4
  br label %245

113:                                              ; preds = %105, %102, %98
  store i64 0, i64* %10, align 8
  %114 = load i64, i64* @lease_break_time, align 8
  %115 = icmp ugt i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %113
  %117 = load i64, i64* @jiffies, align 8
  %118 = load i64, i64* @lease_break_time, align 8
  %119 = load i64, i64* @HZ, align 8
  %120 = mul i64 %118, %119
  %121 = add i64 %117, %120
  store i64 %121, i64* %10, align 8
  %122 = load i64, i64* %10, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %10, align 8
  br label %127

127:                                              ; preds = %124, %116
  br label %128

128:                                              ; preds = %127, %113
  %129 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  store %struct.file_lock* %129, %struct.file_lock** %9, align 8
  br label %130

130:                                              ; preds = %160, %128
  %131 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %132 = icmp ne %struct.file_lock* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %135 = call i64 @IS_LEASE(%struct.file_lock* %134)
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi i1 [ false, %130 ], [ %136, %133 ]
  br i1 %138, label %139, label %164

139:                                              ; preds = %137
  %140 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %141 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %139
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %148 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load i64, i64* %10, align 8
  %150 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %151 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  %152 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %153 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %152, i32 0, i32 5
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %155, align 8
  %157 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %158 = call i32 %156(%struct.file_lock* %157)
  br label %159

159:                                              ; preds = %145, %139
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %162 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %161, i32 0, i32 3
  %163 = load %struct.file_lock*, %struct.file_lock** %162, align 8
  store %struct.file_lock* %163, %struct.file_lock** %9, align 8
  br label %130

164:                                              ; preds = %137
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @O_NONBLOCK, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167, %164
  %173 = load i32, i32* @EWOULDBLOCK, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %5, align 4
  br label %245

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %237, %175
  %177 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %178 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %10, align 8
  %180 = load i64, i64* %10, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %176
  %183 = load i64, i64* @jiffies, align 8
  %184 = load i64, i64* %10, align 8
  %185 = sub i64 %184, %183
  store i64 %185, i64* %10, align 8
  %186 = load i64, i64* %10, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load i64, i64* %10, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %10, align 8
  br label %191

191:                                              ; preds = %188, %182
  br label %192

192:                                              ; preds = %191, %176
  %193 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %194 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %195 = call i32 @locks_insert_block(%struct.file_lock* %193, %struct.file_lock* %194)
  %196 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %197 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %200 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %199, i32 0, i32 3
  %201 = load %struct.file_lock*, %struct.file_lock** %200, align 8
  %202 = icmp ne %struct.file_lock* %201, null
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = load i64, i64* %10, align 8
  %206 = call i32 @wait_event_interruptible_timeout(i32 %198, i32 %204, i64 %205)
  store i32 %206, i32* %5, align 4
  %207 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %208 = call i32 @__locks_delete_block(%struct.file_lock* %207)
  %209 = load i32, i32* %5, align 4
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %244

211:                                              ; preds = %192
  %212 = load i32, i32* %5, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load %struct.inode*, %struct.inode** %3, align 8
  %216 = call i32 @time_out_leases(%struct.inode* %215)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load %struct.inode*, %struct.inode** %3, align 8
  %219 = getelementptr inbounds %struct.inode, %struct.inode* %218, i32 0, i32 0
  %220 = load %struct.file_lock*, %struct.file_lock** %219, align 8
  store %struct.file_lock* %220, %struct.file_lock** %8, align 8
  br label %221

221:                                              ; preds = %239, %217
  %222 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %223 = icmp ne %struct.file_lock* %222, null
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %226 = call i64 @IS_LEASE(%struct.file_lock* %225)
  %227 = icmp ne i64 %226, 0
  br label %228

228:                                              ; preds = %224, %221
  %229 = phi i1 [ false, %221 ], [ %227, %224 ]
  br i1 %229, label %230, label %243

230:                                              ; preds = %228
  %231 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %232 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @F_INPROGRESS, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %230
  br label %176

238:                                              ; preds = %230
  br label %239

239:                                              ; preds = %238
  %240 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %241 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %240, i32 0, i32 3
  %242 = load %struct.file_lock*, %struct.file_lock** %241, align 8
  store %struct.file_lock* %242, %struct.file_lock** %8, align 8
  br label %221

243:                                              ; preds = %228
  store i32 0, i32* %5, align 4
  br label %244

244:                                              ; preds = %243, %192
  br label %245

245:                                              ; preds = %244, %172, %110, %95, %40
  %246 = call i32 (...) @unlock_kernel()
  %247 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %248 = call i64 @IS_ERR(%struct.file_lock* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %245
  %251 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %252 = call i32 @locks_free_lock(%struct.file_lock* %251)
  br label %253

253:                                              ; preds = %250, %245
  %254 = load i32, i32* %5, align 4
  ret i32 %254
}

declare dso_local %struct.file_lock* @lease_alloc(i32*, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @time_out_leases(%struct.inode*) #1

declare dso_local i64 @IS_LEASE(%struct.file_lock*) #1

declare dso_local i64 @IS_ERR(%struct.file_lock*) #1

declare dso_local i32 @PTR_ERR(%struct.file_lock*) #1

declare dso_local i32 @locks_insert_block(%struct.file_lock*, %struct.file_lock*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @__locks_delete_block(%struct.file_lock*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @locks_free_lock(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
