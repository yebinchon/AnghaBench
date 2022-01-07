; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }

@MS_MGC_MSK = common dso_local global i64 0, align 8
@MS_MGC_VAL = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@MS_NOATIME = common dso_local global i64 0, align 8
@MNT_RELATIME = common dso_local global i32 0, align 4
@MS_NOSUID = common dso_local global i64 0, align 8
@MNT_NOSUID = common dso_local global i32 0, align 4
@MS_NODEV = common dso_local global i64 0, align 8
@MNT_NODEV = common dso_local global i32 0, align 4
@MS_NOEXEC = common dso_local global i64 0, align 8
@MNT_NOEXEC = common dso_local global i32 0, align 4
@MNT_NOATIME = common dso_local global i32 0, align 4
@MS_NODIRATIME = common dso_local global i64 0, align 8
@MNT_NODIRATIME = common dso_local global i32 0, align 4
@MS_STRICTATIME = common dso_local global i64 0, align 8
@MS_RDONLY = common dso_local global i64 0, align 8
@MNT_READONLY = common dso_local global i32 0, align 4
@MS_ACTIVE = common dso_local global i64 0, align 8
@MS_BORN = common dso_local global i64 0, align 8
@MS_RELATIME = common dso_local global i64 0, align 8
@MS_KERNMOUNT = common dso_local global i64 0, align 8
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@MS_REMOUNT = common dso_local global i64 0, align 8
@MS_BIND = common dso_local global i64 0, align 8
@MS_REC = common dso_local global i64 0, align 8
@MS_SHARED = common dso_local global i64 0, align 8
@MS_PRIVATE = common dso_local global i64 0, align 8
@MS_SLAVE = common dso_local global i64 0, align 8
@MS_UNBINDABLE = common dso_local global i64 0, align 8
@MS_MOVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_mount(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.path, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @MS_MGC_MSK, align 8
  %17 = and i64 %15, %16
  %18 = load i64, i64* @MS_MGC_VAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i64, i64* @MS_MGC_MSK, align 8
  %22 = xor i64 %21, -1
  %23 = load i64, i64* %10, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %20, %5
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = call i32 @memchr(i8* %33, i32 0, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %28, %25
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %6, align 8
  br label %225

40:                                               ; preds = %32
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @MS_NOATIME, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @MNT_RELATIME, align 4
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @MS_NOSUID, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @MNT_NOSUID, align 4
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @MS_NODEV, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @MNT_NODEV, align 4
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @MS_NOEXEC, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @MNT_NOEXEC, align 4
  %83 = load i32, i32* %14, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @MS_NOATIME, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @MNT_NOATIME, align 4
  %92 = load i32, i32* %14, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @MS_NODIRATIME, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @MNT_NODIRATIME, align 4
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @MS_STRICTATIME, align 8
  %106 = and i64 %104, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load i32, i32* @MNT_RELATIME, align 4
  %110 = load i32, i32* @MNT_NOATIME, align 4
  %111 = or i32 %109, %110
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %14, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %108, %103
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* @MS_RDONLY, align 8
  %118 = and i64 %116, %117
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @MNT_READONLY, align 4
  %122 = load i32, i32* %14, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i64, i64* @MS_NOSUID, align 8
  %126 = load i64, i64* @MS_NOEXEC, align 8
  %127 = or i64 %125, %126
  %128 = load i64, i64* @MS_NODEV, align 8
  %129 = or i64 %127, %128
  %130 = load i64, i64* @MS_ACTIVE, align 8
  %131 = or i64 %129, %130
  %132 = load i64, i64* @MS_BORN, align 8
  %133 = or i64 %131, %132
  %134 = load i64, i64* @MS_NOATIME, align 8
  %135 = or i64 %133, %134
  %136 = load i64, i64* @MS_NODIRATIME, align 8
  %137 = or i64 %135, %136
  %138 = load i64, i64* @MS_RELATIME, align 8
  %139 = or i64 %137, %138
  %140 = load i64, i64* @MS_KERNMOUNT, align 8
  %141 = or i64 %139, %140
  %142 = load i64, i64* @MS_STRICTATIME, align 8
  %143 = or i64 %141, %142
  %144 = xor i64 %143, -1
  %145 = load i64, i64* %10, align 8
  %146 = and i64 %145, %144
  store i64 %146, i64* %10, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %149 = call i32 @kern_path(i8* %147, i32 %148, %struct.path* %12)
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %124
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %6, align 8
  br label %225

155:                                              ; preds = %124
  %156 = load i8*, i8** %7, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = load i64, i64* %10, align 8
  %159 = load i8*, i8** %11, align 8
  %160 = call i32 @security_sb_mount(i8* %156, %struct.path* %12, i8* %157, i64 %158, i8* %159)
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %221

164:                                              ; preds = %155
  %165 = load i64, i64* %10, align 8
  %166 = load i64, i64* @MS_REMOUNT, align 8
  %167 = and i64 %165, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %164
  %170 = load i64, i64* %10, align 8
  %171 = load i64, i64* @MS_REMOUNT, align 8
  %172 = xor i64 %171, -1
  %173 = and i64 %170, %172
  %174 = load i32, i32* %14, align 4
  %175 = load i8*, i8** %11, align 8
  %176 = call i32 @do_remount(%struct.path* %12, i64 %173, i32 %174, i8* %175)
  store i32 %176, i32* %13, align 4
  br label %220

177:                                              ; preds = %164
  %178 = load i64, i64* %10, align 8
  %179 = load i64, i64* @MS_BIND, align 8
  %180 = and i64 %178, %179
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load i8*, i8** %7, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* @MS_REC, align 8
  %186 = and i64 %184, %185
  %187 = call i32 @do_loopback(%struct.path* %12, i8* %183, i64 %186)
  store i32 %187, i32* %13, align 4
  br label %219

188:                                              ; preds = %177
  %189 = load i64, i64* %10, align 8
  %190 = load i64, i64* @MS_SHARED, align 8
  %191 = load i64, i64* @MS_PRIVATE, align 8
  %192 = or i64 %190, %191
  %193 = load i64, i64* @MS_SLAVE, align 8
  %194 = or i64 %192, %193
  %195 = load i64, i64* @MS_UNBINDABLE, align 8
  %196 = or i64 %194, %195
  %197 = and i64 %189, %196
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %188
  %200 = load i64, i64* %10, align 8
  %201 = call i32 @do_change_type(%struct.path* %12, i64 %200)
  store i32 %201, i32* %13, align 4
  br label %218

202:                                              ; preds = %188
  %203 = load i64, i64* %10, align 8
  %204 = load i64, i64* @MS_MOVE, align 8
  %205 = and i64 %203, %204
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i8*, i8** %7, align 8
  %209 = call i32 @do_move_mount(%struct.path* %12, i8* %208)
  store i32 %209, i32* %13, align 4
  br label %217

210:                                              ; preds = %202
  %211 = load i8*, i8** %9, align 8
  %212 = load i64, i64* %10, align 8
  %213 = load i32, i32* %14, align 4
  %214 = load i8*, i8** %7, align 8
  %215 = load i8*, i8** %11, align 8
  %216 = call i32 @do_new_mount(%struct.path* %12, i8* %211, i64 %212, i32 %213, i8* %214, i8* %215)
  store i32 %216, i32* %13, align 4
  br label %217

217:                                              ; preds = %210, %207
  br label %218

218:                                              ; preds = %217, %199
  br label %219

219:                                              ; preds = %218, %182
  br label %220

220:                                              ; preds = %219, %169
  br label %221

221:                                              ; preds = %220, %163
  %222 = call i32 @path_put(%struct.path* %12)
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  store i64 %224, i64* %6, align 8
  br label %225

225:                                              ; preds = %221, %152, %37
  %226 = load i64, i64* %6, align 8
  ret i64 %226
}

declare dso_local i32 @memchr(i8*, i32, i32) #1

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i32 @security_sb_mount(i8*, %struct.path*, i8*, i64, i8*) #1

declare dso_local i32 @do_remount(%struct.path*, i64, i32, i8*) #1

declare dso_local i32 @do_loopback(%struct.path*, i8*, i64) #1

declare dso_local i32 @do_change_type(%struct.path*, i64) #1

declare dso_local i32 @do_move_mount(%struct.path*, i8*) #1

declare dso_local i32 @do_new_mount(%struct.path*, i8*, i64, i32, i8*, i8*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
