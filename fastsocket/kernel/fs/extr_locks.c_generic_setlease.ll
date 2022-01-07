; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_generic_setlease.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_generic_setlease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { i32, %struct.inode* }
%struct.inode = type { i64, %struct.file_lock*, i32, i32, i32 }
%struct.file_lock = type { i64, %struct.TYPE_4__*, %struct.file_lock* }
%struct.TYPE_4__ = type { i32 (%struct.file_lock**, i64)*, i64 (%struct.file_lock*, %struct.file_lock*)*, i32 }

@CAP_LEASE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i64 0, align 8
@F_WRLCK = common dso_local global i64 0, align 8
@F_INPROGRESS = common dso_local global i64 0, align 8
@leases_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_setlease(%struct.file* %0, i64 %1, %struct.file_lock** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file_lock**, align 8
  %8 = alloca %struct.file_lock*, align 8
  %9 = alloca %struct.file_lock**, align 8
  %10 = alloca %struct.file_lock**, align 8
  %11 = alloca %struct.file_lock*, align 8
  %12 = alloca %struct.file_lock*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.file_lock** %2, %struct.file_lock*** %7, align 8
  store %struct.file_lock** null, %struct.file_lock*** %10, align 8
  store %struct.file_lock* null, %struct.file_lock** %12, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  store %struct.dentry* %21, %struct.dentry** %13, align 8
  %22 = load %struct.dentry*, %struct.dentry** %13, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 1
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = call i64 (...) @current_fsuid()
  %26 = load %struct.inode*, %struct.inode** %14, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load i32, i32* @CAP_LEASE, align 4
  %32 = call i32 @capable(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @EACCES, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %213

37:                                               ; preds = %30, %3
  %38 = load %struct.inode*, %struct.inode** %14, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @S_ISREG(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %213

46:                                               ; preds = %37
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @security_file_lock(%struct.file* %47, i64 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %4, align 4
  br label %213

54:                                               ; preds = %46
  %55 = load %struct.inode*, %struct.inode** %14, align 8
  %56 = call i32 @time_out_leases(%struct.inode* %55)
  %57 = load %struct.file_lock**, %struct.file_lock*** %7, align 8
  %58 = load %struct.file_lock*, %struct.file_lock** %57, align 8
  %59 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load %struct.file_lock**, %struct.file_lock*** %7, align 8
  %68 = load %struct.file_lock*, %struct.file_lock** %67, align 8
  store %struct.file_lock* %68, %struct.file_lock** %11, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @F_UNLCK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %107

72:                                               ; preds = %54
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %15, align 4
  %75 = call %struct.file_lock* (...) @locks_alloc_lock()
  store %struct.file_lock* %75, %struct.file_lock** %12, align 8
  %76 = load %struct.file_lock*, %struct.file_lock** %12, align 8
  %77 = icmp eq %struct.file_lock* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %205

79:                                               ; preds = %72
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %15, align 4
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @F_RDLCK, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.inode*, %struct.inode** %14, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 3
  %88 = call i32 @atomic_read(i32* %87)
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %205

91:                                               ; preds = %85, %79
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* @F_WRLCK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load %struct.dentry*, %struct.dentry** %13, align 8
  %97 = getelementptr inbounds %struct.dentry, %struct.dentry* %96, i32 0, i32 0
  %98 = call i32 @atomic_read(i32* %97)
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.inode*, %struct.inode** %14, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 2
  %103 = call i32 @atomic_read(i32* %102)
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %95
  br label %205

106:                                              ; preds = %100, %91
  br label %107

107:                                              ; preds = %106, %54
  %108 = load %struct.inode*, %struct.inode** %14, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 1
  store %struct.file_lock** %109, %struct.file_lock*** %9, align 8
  br label %110

110:                                              ; preds = %148, %107
  %111 = load %struct.file_lock**, %struct.file_lock*** %9, align 8
  %112 = load %struct.file_lock*, %struct.file_lock** %111, align 8
  store %struct.file_lock* %112, %struct.file_lock** %8, align 8
  %113 = icmp ne %struct.file_lock* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %116 = call i64 @IS_LEASE(%struct.file_lock* %115)
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %114, %110
  %119 = phi i1 [ false, %110 ], [ %117, %114 ]
  br i1 %119, label %120, label %151

120:                                              ; preds = %118
  %121 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %122 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i64 (%struct.file_lock*, %struct.file_lock*)*, i64 (%struct.file_lock*, %struct.file_lock*)** %124, align 8
  %126 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %127 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %128 = call i64 %125(%struct.file_lock* %126, %struct.file_lock* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %120
  %131 = load %struct.file_lock**, %struct.file_lock*** %9, align 8
  store %struct.file_lock** %131, %struct.file_lock*** %10, align 8
  br label %147

132:                                              ; preds = %120
  %133 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %134 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @F_INPROGRESS, align 8
  %137 = load i64, i64* @F_UNLCK, align 8
  %138 = or i64 %136, %137
  %139 = icmp eq i64 %135, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %146

143:                                              ; preds = %132
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %130
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %150 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %149, i32 0, i32 2
  store %struct.file_lock** %150, %struct.file_lock*** %9, align 8
  br label %110

151:                                              ; preds = %118
  %152 = load i32, i32* @EAGAIN, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %15, align 4
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* @F_RDLCK, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i32, i32* %17, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %157, %151
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* @F_WRLCK, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %165, %166
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164, %157
  br label %205

170:                                              ; preds = %164, %160
  %171 = load %struct.file_lock**, %struct.file_lock*** %10, align 8
  %172 = icmp ne %struct.file_lock** %171, null
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  %174 = load %struct.file_lock**, %struct.file_lock*** %10, align 8
  %175 = load %struct.file_lock*, %struct.file_lock** %174, align 8
  %176 = load %struct.file_lock**, %struct.file_lock*** %7, align 8
  store %struct.file_lock* %175, %struct.file_lock** %176, align 8
  %177 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %178 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %177, i32 0, i32 1
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32 (%struct.file_lock**, i64)*, i32 (%struct.file_lock**, i64)** %180, align 8
  %182 = load %struct.file_lock**, %struct.file_lock*** %10, align 8
  %183 = load i64, i64* %6, align 8
  %184 = call i32 %181(%struct.file_lock** %182, i64 %183)
  store i32 %184, i32* %15, align 4
  br label %205

185:                                              ; preds = %170
  store i32 0, i32* %15, align 4
  %186 = load i64, i64* %6, align 8
  %187 = load i64, i64* @F_UNLCK, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %205

190:                                              ; preds = %185
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* @leases_enable, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %190
  br label %205

196:                                              ; preds = %190
  %197 = load %struct.file_lock*, %struct.file_lock** %12, align 8
  %198 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %199 = call i32 @locks_copy_lock(%struct.file_lock* %197, %struct.file_lock* %198)
  %200 = load %struct.file_lock**, %struct.file_lock*** %9, align 8
  %201 = load %struct.file_lock*, %struct.file_lock** %12, align 8
  %202 = call i32 @locks_insert_lock(%struct.file_lock** %200, %struct.file_lock* %201)
  %203 = load %struct.file_lock*, %struct.file_lock** %12, align 8
  %204 = load %struct.file_lock**, %struct.file_lock*** %7, align 8
  store %struct.file_lock* %203, %struct.file_lock** %204, align 8
  store i32 0, i32* %4, align 4
  br label %213

205:                                              ; preds = %195, %189, %173, %169, %105, %90, %78
  %206 = load %struct.file_lock*, %struct.file_lock** %12, align 8
  %207 = icmp ne %struct.file_lock* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load %struct.file_lock*, %struct.file_lock** %12, align 8
  %210 = call i32 @locks_free_lock(%struct.file_lock* %209)
  br label %211

211:                                              ; preds = %208, %205
  %212 = load i32, i32* %15, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %211, %196, %52, %43, %34
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @security_file_lock(%struct.file*, i64) #1

declare dso_local i32 @time_out_leases(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.file_lock* @locks_alloc_lock(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @IS_LEASE(%struct.file_lock*) #1

declare dso_local i32 @locks_copy_lock(%struct.file_lock*, %struct.file_lock*) #1

declare dso_local i32 @locks_insert_lock(%struct.file_lock**, %struct.file_lock*) #1

declare dso_local i32 @locks_free_lock(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
