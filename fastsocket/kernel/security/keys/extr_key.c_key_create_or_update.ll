; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_create_or_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_create_or_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { i64, i64, %struct.key_type*, i32, i32 }
%struct.cred = type { i32, i32 }
%struct.key = type { i64, i64, %struct.key*, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@key_type_keyring = common dso_local global %struct.key_type zeroinitializer, align 8
@KEY_WRITE = common dso_local global i32 0, align 4
@KEY_PERM_UNDEF = common dso_local global i32 0, align 4
@KEY_POS_VIEW = common dso_local global i32 0, align 4
@KEY_POS_SEARCH = common dso_local global i32 0, align 4
@KEY_POS_LINK = common dso_local global i32 0, align 4
@KEY_POS_SETATTR = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_USR_SEARCH = common dso_local global i32 0, align 4
@KEY_USR_LINK = common dso_local global i32 0, align 4
@KEY_USR_SETATTR = common dso_local global i32 0, align 4
@KEY_POS_READ = common dso_local global i32 0, align 4
@KEY_USR_READ = common dso_local global i32 0, align 4
@KEY_USR_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key_type* @key_create_or_update(%struct.key_type* %0, i8* %1, i8* %2, i8* %3, i64 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.key_type*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.cred*, align 8
  %17 = alloca %struct.key_type*, align 8
  %18 = alloca %struct.key*, align 8
  %19 = alloca %struct.key*, align 8
  %20 = alloca %struct.key_type*, align 8
  %21 = alloca i32, align 4
  store %struct.key_type* %0, %struct.key_type** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %22 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %22, %struct.cred** %16, align 8
  store %struct.key* null, %struct.key** %19, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call %struct.key_type* @key_type_lookup(i8* %23)
  store %struct.key_type* %24, %struct.key_type** %17, align 8
  %25 = load %struct.key_type*, %struct.key_type** %17, align 8
  %26 = call i64 @IS_ERR(%struct.key_type* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %7
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.key_type* @ERR_PTR(i32 %30)
  store %struct.key_type* %31, %struct.key_type** %20, align 8
  br label %191

32:                                               ; preds = %7
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.key_type* @ERR_PTR(i32 %34)
  store %struct.key_type* %35, %struct.key_type** %20, align 8
  %36 = load %struct.key_type*, %struct.key_type** %17, align 8
  %37 = getelementptr inbounds %struct.key_type, %struct.key_type* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.key_type*, %struct.key_type** %17, align 8
  %42 = getelementptr inbounds %struct.key_type, %struct.key_type* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %32
  br label %188

46:                                               ; preds = %40
  %47 = load %struct.key_type*, %struct.key_type** %8, align 8
  %48 = call %struct.key_type* @key_ref_to_ptr(%struct.key_type* %47)
  %49 = bitcast %struct.key_type* %48 to %struct.key*
  store %struct.key* %49, %struct.key** %18, align 8
  %50 = load %struct.key*, %struct.key** %18, align 8
  %51 = bitcast %struct.key* %50 to %struct.key_type*
  %52 = call i32 @key_check(%struct.key_type* %51)
  %53 = load i32, i32* @ENOTDIR, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.key_type* @ERR_PTR(i32 %54)
  store %struct.key_type* %55, %struct.key_type** %20, align 8
  %56 = load %struct.key*, %struct.key** %18, align 8
  %57 = getelementptr inbounds %struct.key, %struct.key* %56, i32 0, i32 2
  %58 = load %struct.key*, %struct.key** %57, align 8
  %59 = icmp ne %struct.key* %58, bitcast (%struct.key_type* @key_type_keyring to %struct.key*)
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %188

61:                                               ; preds = %46
  %62 = load %struct.key*, %struct.key** %18, align 8
  %63 = bitcast %struct.key* %62 to %struct.key_type*
  %64 = load %struct.key_type*, %struct.key_type** %17, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @__key_link_begin(%struct.key_type* %63, %struct.key_type* %64, i8* %65, i64* %15)
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %21, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %188

70:                                               ; preds = %61
  %71 = load %struct.key_type*, %struct.key_type** %8, align 8
  %72 = load i32, i32* @KEY_WRITE, align 4
  %73 = call i32 @key_permission(%struct.key_type* %71, i32 %72)
  store i32 %73, i32* %21, align 4
  %74 = load i32, i32* %21, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %21, align 4
  %78 = call %struct.key_type* @ERR_PTR(i32 %77)
  store %struct.key_type* %78, %struct.key_type** %20, align 8
  br label %182

79:                                               ; preds = %70
  %80 = load %struct.key_type*, %struct.key_type** %17, align 8
  %81 = getelementptr inbounds %struct.key_type, %struct.key_type* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.key_type*, %struct.key_type** %8, align 8
  %86 = load %struct.key_type*, %struct.key_type** %17, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call %struct.key_type* @__keyring_search_one(%struct.key_type* %85, %struct.key_type* %86, i8* %87, i32 0)
  store %struct.key_type* %88, %struct.key_type** %20, align 8
  %89 = load %struct.key_type*, %struct.key_type** %20, align 8
  %90 = call i64 @IS_ERR(%struct.key_type* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  br label %193

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %79
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @KEY_PERM_UNDEF, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %138

98:                                               ; preds = %94
  %99 = load i32, i32* @KEY_POS_VIEW, align 4
  %100 = load i32, i32* @KEY_POS_SEARCH, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @KEY_POS_LINK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @KEY_POS_SETATTR, align 4
  %105 = or i32 %103, %104
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* @KEY_USR_VIEW, align 4
  %107 = load i32, i32* @KEY_USR_SEARCH, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @KEY_USR_LINK, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @KEY_USR_SETATTR, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %13, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %13, align 4
  %115 = load %struct.key_type*, %struct.key_type** %17, align 8
  %116 = getelementptr inbounds %struct.key_type, %struct.key_type* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %98
  %120 = load i32, i32* @KEY_POS_READ, align 4
  %121 = load i32, i32* @KEY_USR_READ, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* %13, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %119, %98
  %126 = load %struct.key_type*, %struct.key_type** %17, align 8
  %127 = icmp eq %struct.key_type* %126, @key_type_keyring
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = load %struct.key_type*, %struct.key_type** %17, align 8
  %130 = getelementptr inbounds %struct.key_type, %struct.key_type* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128, %125
  %134 = load i32, i32* @KEY_USR_WRITE, align 4
  %135 = load i32, i32* %13, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %133, %128
  br label %138

138:                                              ; preds = %137, %94
  %139 = load %struct.key_type*, %struct.key_type** %17, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load %struct.cred*, %struct.cred** %16, align 8
  %142 = getelementptr inbounds %struct.cred, %struct.cred* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.cred*, %struct.cred** %16, align 8
  %145 = getelementptr inbounds %struct.cred, %struct.cred* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.cred*, %struct.cred** %16, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load i64, i64* %14, align 8
  %150 = call %struct.key_type* @key_alloc(%struct.key_type* %139, i8* %140, i32 %143, i32 %146, %struct.cred* %147, i32 %148, i64 %149)
  %151 = bitcast %struct.key_type* %150 to %struct.key*
  store %struct.key* %151, %struct.key** %19, align 8
  %152 = load %struct.key*, %struct.key** %19, align 8
  %153 = bitcast %struct.key* %152 to %struct.key_type*
  %154 = call i64 @IS_ERR(%struct.key_type* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %138
  %157 = load %struct.key*, %struct.key** %19, align 8
  %158 = bitcast %struct.key* %157 to %struct.key_type*
  %159 = call %struct.key_type* @ERR_CAST(%struct.key_type* %158)
  store %struct.key_type* %159, %struct.key_type** %20, align 8
  br label %182

160:                                              ; preds = %138
  %161 = load %struct.key*, %struct.key** %19, align 8
  %162 = bitcast %struct.key* %161 to %struct.key_type*
  %163 = load i8*, i8** %11, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load %struct.key*, %struct.key** %18, align 8
  %166 = bitcast %struct.key* %165 to %struct.key_type*
  %167 = call i32 @__key_instantiate_and_link(%struct.key_type* %162, i8* %163, i64 %164, %struct.key_type* %166, i32* null, i64* %15)
  store i32 %167, i32* %21, align 4
  %168 = load i32, i32* %21, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %160
  %171 = load %struct.key*, %struct.key** %19, align 8
  %172 = bitcast %struct.key* %171 to %struct.key_type*
  %173 = call i32 @key_put(%struct.key_type* %172)
  %174 = load i32, i32* %21, align 4
  %175 = call %struct.key_type* @ERR_PTR(i32 %174)
  store %struct.key_type* %175, %struct.key_type** %20, align 8
  br label %182

176:                                              ; preds = %160
  %177 = load %struct.key*, %struct.key** %19, align 8
  %178 = bitcast %struct.key* %177 to %struct.key_type*
  %179 = load %struct.key_type*, %struct.key_type** %8, align 8
  %180 = call i32 @is_key_possessed(%struct.key_type* %179)
  %181 = call %struct.key_type* @make_key_ref(%struct.key_type* %178, i32 %180)
  store %struct.key_type* %181, %struct.key_type** %20, align 8
  br label %182

182:                                              ; preds = %176, %170, %156, %76
  %183 = load %struct.key*, %struct.key** %18, align 8
  %184 = bitcast %struct.key* %183 to %struct.key_type*
  %185 = load %struct.key_type*, %struct.key_type** %17, align 8
  %186 = load i64, i64* %15, align 8
  %187 = call i32 @__key_link_end(%struct.key_type* %184, %struct.key_type* %185, i64 %186)
  br label %188

188:                                              ; preds = %182, %69, %60, %45
  %189 = load %struct.key_type*, %struct.key_type** %17, align 8
  %190 = call i32 @key_type_put(%struct.key_type* %189)
  br label %191

191:                                              ; preds = %193, %188, %28
  %192 = load %struct.key_type*, %struct.key_type** %20, align 8
  ret %struct.key_type* %192

193:                                              ; preds = %92
  %194 = load %struct.key*, %struct.key** %18, align 8
  %195 = bitcast %struct.key* %194 to %struct.key_type*
  %196 = load %struct.key_type*, %struct.key_type** %17, align 8
  %197 = load i64, i64* %15, align 8
  %198 = call i32 @__key_link_end(%struct.key_type* %195, %struct.key_type* %196, i64 %197)
  %199 = load %struct.key_type*, %struct.key_type** %17, align 8
  %200 = call i32 @key_type_put(%struct.key_type* %199)
  %201 = load %struct.key_type*, %struct.key_type** %20, align 8
  %202 = load i8*, i8** %11, align 8
  %203 = load i64, i64* %12, align 8
  %204 = call %struct.key_type* @__key_update(%struct.key_type* %201, i8* %202, i64 %203)
  store %struct.key_type* %204, %struct.key_type** %20, align 8
  br label %191
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local %struct.key_type* @key_type_lookup(i8*) #1

declare dso_local i64 @IS_ERR(%struct.key_type*) #1

declare dso_local %struct.key_type* @ERR_PTR(i32) #1

declare dso_local %struct.key_type* @key_ref_to_ptr(%struct.key_type*) #1

declare dso_local i32 @key_check(%struct.key_type*) #1

declare dso_local i32 @__key_link_begin(%struct.key_type*, %struct.key_type*, i8*, i64*) #1

declare dso_local i32 @key_permission(%struct.key_type*, i32) #1

declare dso_local %struct.key_type* @__keyring_search_one(%struct.key_type*, %struct.key_type*, i8*, i32) #1

declare dso_local %struct.key_type* @key_alloc(%struct.key_type*, i8*, i32, i32, %struct.cred*, i32, i64) #1

declare dso_local %struct.key_type* @ERR_CAST(%struct.key_type*) #1

declare dso_local i32 @__key_instantiate_and_link(%struct.key_type*, i8*, i64, %struct.key_type*, i32*, i64*) #1

declare dso_local i32 @key_put(%struct.key_type*) #1

declare dso_local %struct.key_type* @make_key_ref(%struct.key_type*, i32) #1

declare dso_local i32 @is_key_possessed(%struct.key_type*) #1

declare dso_local i32 @__key_link_end(%struct.key_type*, %struct.key_type*, i64) #1

declare dso_local i32 @key_type_put(%struct.key_type*) #1

declare dso_local %struct.key_type* @__key_update(%struct.key_type*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
