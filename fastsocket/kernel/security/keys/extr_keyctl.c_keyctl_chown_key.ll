; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_chown_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_chown_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_user = type { i32, i32, i32, i32, i32 }
%struct.key = type { i64, i64, i32, i32, %struct.key_user*, i32 }

@KEY_LOOKUP_CREATE = common dso_local global i32 0, align 4
@KEY_LOOKUP_PARTIAL = common dso_local global i32 0, align 4
@KEY_SETATTR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@KEY_FLAG_IN_QUOTA = common dso_local global i32 0, align 4
@key_quota_root_maxkeys = common dso_local global i32 0, align 4
@key_quota_maxkeys = common dso_local global i32 0, align 4
@key_quota_root_maxbytes = common dso_local global i32 0, align 4
@key_quota_maxbytes = common dso_local global i32 0, align 4
@KEY_FLAG_INSTANTIATED = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_chown_key(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.key_user*, align 8
  %8 = alloca %struct.key_user*, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.key_user* null, %struct.key_user** %8, align 8
  store i64 0, i64* %11, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %235

20:                                               ; preds = %16, %3
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @KEY_LOOKUP_CREATE, align 4
  %23 = load i32, i32* @KEY_LOOKUP_PARTIAL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @KEY_SETATTR, align 4
  %26 = call i32 @lookup_user_key(i32 %21, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @PTR_ERR(i32 %31)
  store i64 %32, i64* %11, align 8
  br label %235

33:                                               ; preds = %20
  %34 = load i32, i32* %10, align 4
  %35 = call %struct.key* @key_ref_to_ptr(i32 %34)
  store %struct.key* %35, %struct.key** %9, align 8
  %36 = load i64, i64* @EACCES, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %11, align 8
  %38 = load %struct.key*, %struct.key** %9, align 8
  %39 = getelementptr inbounds %struct.key, %struct.key* %38, i32 0, i32 3
  %40 = call i32 @down_write(i32* %39)
  %41 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %42 = call i32 @capable(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %33
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %45, -1
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.key*, %struct.key** %9, align 8
  %49 = getelementptr inbounds %struct.key, %struct.key* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %223

54:                                               ; preds = %47, %44
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, -1
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.key*, %struct.key** %9, align 8
  %60 = getelementptr inbounds %struct.key, %struct.key* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @in_group_p(i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %223

68:                                               ; preds = %63, %57, %54
  br label %69

69:                                               ; preds = %68, %33
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %70, -1
  br i1 %71, label %72, label %215

72:                                               ; preds = %69
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.key*, %struct.key** %9, align 8
  %75 = getelementptr inbounds %struct.key, %struct.key* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %215

78:                                               ; preds = %72
  %79 = load i64, i64* @ENOMEM, align 8
  %80 = sub nsw i64 0, %79
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 (...) @current_user_ns()
  %83 = call %struct.key_user* @key_user_lookup(i64 %81, i32 %82)
  store %struct.key_user* %83, %struct.key_user** %7, align 8
  %84 = load %struct.key_user*, %struct.key_user** %7, align 8
  %85 = icmp ne %struct.key_user* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  br label %223

87:                                               ; preds = %78
  %88 = load i32, i32* @KEY_FLAG_IN_QUOTA, align 4
  %89 = load %struct.key*, %struct.key** %9, align 8
  %90 = getelementptr inbounds %struct.key, %struct.key* %89, i32 0, i32 5
  %91 = call i64 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %182

93:                                               ; preds = %87
  %94 = load i64, i64* %5, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* @key_quota_root_maxkeys, align 4
  br label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @key_quota_maxkeys, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* %12, align 4
  %102 = load i64, i64* %5, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @key_quota_root_maxbytes, align 4
  br label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @key_quota_maxbytes, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %13, align 4
  %110 = load %struct.key_user*, %struct.key_user** %7, align 8
  %111 = getelementptr inbounds %struct.key_user, %struct.key_user* %110, i32 0, i32 2
  %112 = call i32 @spin_lock(i32* %111)
  %113 = load %struct.key_user*, %struct.key_user** %7, align 8
  %114 = getelementptr inbounds %struct.key_user, %struct.key_user* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32, i32* %12, align 4
  %118 = icmp uge i32 %116, %117
  br i1 %118, label %141, label %119

119:                                              ; preds = %108
  %120 = load %struct.key_user*, %struct.key_user** %7, align 8
  %121 = getelementptr inbounds %struct.key_user, %struct.key_user* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.key*, %struct.key** %9, align 8
  %124 = getelementptr inbounds %struct.key, %struct.key* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = add i32 %122, %125
  %127 = load i32, i32* %13, align 4
  %128 = icmp uge i32 %126, %127
  br i1 %128, label %141, label %129

129:                                              ; preds = %119
  %130 = load %struct.key_user*, %struct.key_user** %7, align 8
  %131 = getelementptr inbounds %struct.key_user, %struct.key_user* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.key*, %struct.key** %9, align 8
  %134 = getelementptr inbounds %struct.key, %struct.key* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = add i32 %132, %135
  %137 = load %struct.key_user*, %struct.key_user** %7, align 8
  %138 = getelementptr inbounds %struct.key_user, %struct.key_user* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ult i32 %136, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %129, %119, %108
  br label %237

142:                                              ; preds = %129
  %143 = load %struct.key_user*, %struct.key_user** %7, align 8
  %144 = getelementptr inbounds %struct.key_user, %struct.key_user* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load %struct.key*, %struct.key** %9, align 8
  %148 = getelementptr inbounds %struct.key, %struct.key* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.key_user*, %struct.key_user** %7, align 8
  %151 = getelementptr inbounds %struct.key_user, %struct.key_user* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.key_user*, %struct.key_user** %7, align 8
  %155 = getelementptr inbounds %struct.key_user, %struct.key_user* %154, i32 0, i32 2
  %156 = call i32 @spin_unlock(i32* %155)
  %157 = load %struct.key*, %struct.key** %9, align 8
  %158 = getelementptr inbounds %struct.key, %struct.key* %157, i32 0, i32 4
  %159 = load %struct.key_user*, %struct.key_user** %158, align 8
  %160 = getelementptr inbounds %struct.key_user, %struct.key_user* %159, i32 0, i32 2
  %161 = call i32 @spin_lock(i32* %160)
  %162 = load %struct.key*, %struct.key** %9, align 8
  %163 = getelementptr inbounds %struct.key, %struct.key* %162, i32 0, i32 4
  %164 = load %struct.key_user*, %struct.key_user** %163, align 8
  %165 = getelementptr inbounds %struct.key_user, %struct.key_user* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %165, align 4
  %168 = load %struct.key*, %struct.key** %9, align 8
  %169 = getelementptr inbounds %struct.key, %struct.key* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.key*, %struct.key** %9, align 8
  %172 = getelementptr inbounds %struct.key, %struct.key* %171, i32 0, i32 4
  %173 = load %struct.key_user*, %struct.key_user** %172, align 8
  %174 = getelementptr inbounds %struct.key_user, %struct.key_user* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sub i32 %175, %170
  store i32 %176, i32* %174, align 4
  %177 = load %struct.key*, %struct.key** %9, align 8
  %178 = getelementptr inbounds %struct.key, %struct.key* %177, i32 0, i32 4
  %179 = load %struct.key_user*, %struct.key_user** %178, align 8
  %180 = getelementptr inbounds %struct.key_user, %struct.key_user* %179, i32 0, i32 2
  %181 = call i32 @spin_unlock(i32* %180)
  br label %182

182:                                              ; preds = %142, %87
  %183 = load %struct.key*, %struct.key** %9, align 8
  %184 = getelementptr inbounds %struct.key, %struct.key* %183, i32 0, i32 4
  %185 = load %struct.key_user*, %struct.key_user** %184, align 8
  %186 = getelementptr inbounds %struct.key_user, %struct.key_user* %185, i32 0, i32 4
  %187 = call i32 @atomic_dec(i32* %186)
  %188 = load %struct.key_user*, %struct.key_user** %7, align 8
  %189 = getelementptr inbounds %struct.key_user, %struct.key_user* %188, i32 0, i32 4
  %190 = call i32 @atomic_inc(i32* %189)
  %191 = load i32, i32* @KEY_FLAG_INSTANTIATED, align 4
  %192 = load %struct.key*, %struct.key** %9, align 8
  %193 = getelementptr inbounds %struct.key, %struct.key* %192, i32 0, i32 5
  %194 = call i64 @test_bit(i32 %191, i32* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %182
  %197 = load %struct.key*, %struct.key** %9, align 8
  %198 = getelementptr inbounds %struct.key, %struct.key* %197, i32 0, i32 4
  %199 = load %struct.key_user*, %struct.key_user** %198, align 8
  %200 = getelementptr inbounds %struct.key_user, %struct.key_user* %199, i32 0, i32 3
  %201 = call i32 @atomic_dec(i32* %200)
  %202 = load %struct.key_user*, %struct.key_user** %7, align 8
  %203 = getelementptr inbounds %struct.key_user, %struct.key_user* %202, i32 0, i32 3
  %204 = call i32 @atomic_inc(i32* %203)
  br label %205

205:                                              ; preds = %196, %182
  %206 = load %struct.key*, %struct.key** %9, align 8
  %207 = getelementptr inbounds %struct.key, %struct.key* %206, i32 0, i32 4
  %208 = load %struct.key_user*, %struct.key_user** %207, align 8
  store %struct.key_user* %208, %struct.key_user** %8, align 8
  %209 = load %struct.key_user*, %struct.key_user** %7, align 8
  %210 = load %struct.key*, %struct.key** %9, align 8
  %211 = getelementptr inbounds %struct.key, %struct.key* %210, i32 0, i32 4
  store %struct.key_user* %209, %struct.key_user** %211, align 8
  %212 = load i64, i64* %5, align 8
  %213 = load %struct.key*, %struct.key** %9, align 8
  %214 = getelementptr inbounds %struct.key, %struct.key* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 8
  br label %215

215:                                              ; preds = %205, %72, %69
  %216 = load i64, i64* %6, align 8
  %217 = icmp ne i64 %216, -1
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load i64, i64* %6, align 8
  %220 = load %struct.key*, %struct.key** %9, align 8
  %221 = getelementptr inbounds %struct.key, %struct.key* %220, i32 0, i32 1
  store i64 %219, i64* %221, align 8
  br label %222

222:                                              ; preds = %218, %215
  store i64 0, i64* %11, align 8
  br label %223

223:                                              ; preds = %237, %222, %86, %67, %53
  %224 = load %struct.key*, %struct.key** %9, align 8
  %225 = getelementptr inbounds %struct.key, %struct.key* %224, i32 0, i32 3
  %226 = call i32 @up_write(i32* %225)
  %227 = load %struct.key*, %struct.key** %9, align 8
  %228 = call i32 @key_put(%struct.key* %227)
  %229 = load %struct.key_user*, %struct.key_user** %8, align 8
  %230 = icmp ne %struct.key_user* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %223
  %232 = load %struct.key_user*, %struct.key_user** %8, align 8
  %233 = call i32 @key_user_put(%struct.key_user* %232)
  br label %234

234:                                              ; preds = %231, %223
  br label %235

235:                                              ; preds = %234, %30, %19
  %236 = load i64, i64* %11, align 8
  ret i64 %236

237:                                              ; preds = %141
  %238 = load %struct.key_user*, %struct.key_user** %7, align 8
  %239 = getelementptr inbounds %struct.key_user, %struct.key_user* %238, i32 0, i32 2
  %240 = call i32 @spin_unlock(i32* %239)
  %241 = load %struct.key_user*, %struct.key_user** %7, align 8
  store %struct.key_user* %241, %struct.key_user** %8, align 8
  %242 = load i64, i64* @EDQUOT, align 8
  %243 = sub nsw i64 0, %242
  store i64 %243, i64* %11, align 8
  br label %223
}

declare dso_local i32 @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @in_group_p(i64) #1

declare dso_local %struct.key_user* @key_user_lookup(i64, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @key_user_put(%struct.key_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
