; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_construct_alloc_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_construct_alloc_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { i32, i32 }
%struct.key = type { i32 }
%struct.key_user = type { i32 }
%struct.cred = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s,%s,,,\00", align 1
@KEY_POS_ALL = common dso_local global i32 0, align 4
@KEY_FLAG_USER_CONSTRUCT = common dso_local global i32 0, align 4
@key_construction_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" = 0 [%d]\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" = -EINPROGRESS [%d]\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c" = %d [linkcheck]\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c" = %d [prelink]\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" = %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_type*, i8*, %struct.key*, i64, %struct.key_user*, %struct.key**)* @construct_alloc_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct_alloc_key(%struct.key_type* %0, i8* %1, %struct.key* %2, i64 %3, %struct.key_user* %4, %struct.key** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.key_type*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.key_user*, align 8
  %13 = alloca %struct.key**, align 8
  %14 = alloca %struct.cred*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.key*, align 8
  %17 = alloca %struct.key*, align 8
  %18 = alloca i32, align 4
  store %struct.key_type* %0, %struct.key_type** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.key* %2, %struct.key** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.key_user* %4, %struct.key_user** %12, align 8
  store %struct.key** %5, %struct.key*** %13, align 8
  %19 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %19, %struct.cred** %14, align 8
  %20 = load %struct.key_type*, %struct.key_type** %8, align 8
  %21 = getelementptr inbounds %struct.key_type, %struct.key_type* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @kenter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %23)
  %25 = load %struct.key**, %struct.key*** %13, align 8
  store %struct.key* null, %struct.key** %25, align 8
  %26 = load %struct.key_user*, %struct.key_user** %12, align 8
  %27 = getelementptr inbounds %struct.key_user, %struct.key_user* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.key_type*, %struct.key_type** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.cred*, %struct.cred** %14, align 8
  %32 = getelementptr inbounds %struct.cred, %struct.cred* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cred*, %struct.cred** %14, align 8
  %35 = getelementptr inbounds %struct.cred, %struct.cred* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cred*, %struct.cred** %14, align 8
  %38 = load i32, i32* @KEY_POS_ALL, align 4
  %39 = load i64, i64* %11, align 8
  %40 = call %struct.key* @key_alloc(%struct.key_type* %29, i8* %30, i32 %33, i32 %36, %struct.cred* %37, i32 %38, i64 %39)
  store %struct.key* %40, %struct.key** %16, align 8
  %41 = load %struct.key*, %struct.key** %16, align 8
  %42 = call i64 @IS_ERR(%struct.key* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %6
  br label %153

45:                                               ; preds = %6
  %46 = load i32, i32* @KEY_FLAG_USER_CONSTRUCT, align 4
  %47 = load %struct.key*, %struct.key** %16, align 8
  %48 = getelementptr inbounds %struct.key, %struct.key* %47, i32 0, i32 0
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load %struct.key*, %struct.key** %10, align 8
  %51 = icmp ne %struct.key* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.key*, %struct.key** %10, align 8
  %54 = load %struct.key_type*, %struct.key_type** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @__key_link_begin(%struct.key* %53, %struct.key_type* %54, i8* %55, i64* %15)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %146

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %45
  %62 = call i32 @mutex_lock(i32* @key_construction_mutex)
  %63 = load %struct.key_type*, %struct.key_type** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load %struct.key_type*, %struct.key_type** %8, align 8
  %66 = getelementptr inbounds %struct.key_type, %struct.key_type* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cred*, %struct.cred** %14, align 8
  %69 = call %struct.key* @search_process_keyrings(%struct.key_type* %63, i8* %64, i32 %67, %struct.cred* %68)
  store %struct.key* %69, %struct.key** %17, align 8
  %70 = load %struct.key*, %struct.key** %17, align 8
  %71 = call i64 @IS_ERR(%struct.key* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %61
  br label %99

74:                                               ; preds = %61
  %75 = load %struct.key*, %struct.key** %10, align 8
  %76 = icmp ne %struct.key* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.key*, %struct.key** %10, align 8
  %79 = load %struct.key*, %struct.key** %16, align 8
  %80 = call i32 @__key_link(%struct.key* %78, %struct.key* %79, i64* %15)
  br label %81

81:                                               ; preds = %77, %74
  %82 = call i32 @mutex_unlock(i32* @key_construction_mutex)
  %83 = load %struct.key*, %struct.key** %10, align 8
  %84 = icmp ne %struct.key* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.key*, %struct.key** %10, align 8
  %87 = load %struct.key_type*, %struct.key_type** %8, align 8
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @__key_link_end(%struct.key* %86, %struct.key_type* %87, i64 %88)
  br label %90

90:                                               ; preds = %85, %81
  %91 = load %struct.key_user*, %struct.key_user** %12, align 8
  %92 = getelementptr inbounds %struct.key_user, %struct.key_user* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load %struct.key*, %struct.key** %16, align 8
  %95 = load %struct.key**, %struct.key*** %13, align 8
  store %struct.key* %94, %struct.key** %95, align 8
  %96 = load %struct.key*, %struct.key** %16, align 8
  %97 = call i32 @key_serial(%struct.key* %96)
  %98 = call i32 @kleave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  store i32 0, i32* %7, align 4
  br label %162

99:                                               ; preds = %73
  %100 = load %struct.key*, %struct.key** %16, align 8
  %101 = call i32 @key_put(%struct.key* %100)
  %102 = call i32 @mutex_unlock(i32* @key_construction_mutex)
  %103 = load %struct.key*, %struct.key** %17, align 8
  %104 = call %struct.key* @key_ref_to_ptr(%struct.key* %103)
  store %struct.key* %104, %struct.key** %16, align 8
  %105 = load %struct.key*, %struct.key** %10, align 8
  %106 = icmp ne %struct.key* %105, null
  br i1 %106, label %107, label %126

107:                                              ; preds = %99
  %108 = load %struct.key*, %struct.key** %10, align 8
  %109 = load %struct.key*, %struct.key** %16, align 8
  %110 = call i32 @__key_link_check_live_key(%struct.key* %108, %struct.key* %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.key*, %struct.key** %10, align 8
  %115 = load %struct.key*, %struct.key** %16, align 8
  %116 = call i32 @__key_link(%struct.key* %114, %struct.key* %115, i64* %15)
  br label %117

117:                                              ; preds = %113, %107
  %118 = load %struct.key*, %struct.key** %10, align 8
  %119 = load %struct.key_type*, %struct.key_type** %8, align 8
  %120 = load i64, i64* %15, align 8
  %121 = call i32 @__key_link_end(%struct.key* %118, %struct.key_type* %119, i64 %120)
  %122 = load i32, i32* %18, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %137

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %99
  %127 = load %struct.key_user*, %struct.key_user** %12, align 8
  %128 = getelementptr inbounds %struct.key_user, %struct.key_user* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load %struct.key*, %struct.key** %16, align 8
  %131 = load %struct.key**, %struct.key*** %13, align 8
  store %struct.key* %130, %struct.key** %131, align 8
  %132 = load %struct.key*, %struct.key** %16, align 8
  %133 = call i32 @key_serial(%struct.key* %132)
  %134 = call i32 @kleave(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @EINPROGRESS, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %7, align 4
  br label %162

137:                                              ; preds = %124
  %138 = load %struct.key_user*, %struct.key_user** %12, align 8
  %139 = getelementptr inbounds %struct.key_user, %struct.key_user* %138, i32 0, i32 0
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load %struct.key*, %struct.key** %16, align 8
  %142 = call i32 @key_put(%struct.key* %141)
  %143 = load i32, i32* %18, align 4
  %144 = call i32 @kleave(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %18, align 4
  store i32 %145, i32* %7, align 4
  br label %162

146:                                              ; preds = %59
  %147 = load %struct.key_user*, %struct.key_user** %12, align 8
  %148 = getelementptr inbounds %struct.key_user, %struct.key_user* %147, i32 0, i32 0
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load i32, i32* %18, align 4
  %151 = call i32 @kleave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %7, align 4
  br label %162

153:                                              ; preds = %44
  %154 = load %struct.key_user*, %struct.key_user** %12, align 8
  %155 = getelementptr inbounds %struct.key_user, %struct.key_user* %154, i32 0, i32 0
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load %struct.key*, %struct.key** %16, align 8
  %158 = call i32 @PTR_ERR(%struct.key* %157)
  %159 = call i32 @kleave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %158)
  %160 = load %struct.key*, %struct.key** %16, align 8
  %161 = call i32 @PTR_ERR(%struct.key* %160)
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %153, %146, %137, %126, %90
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @kenter(i8*, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.key* @key_alloc(%struct.key_type*, i8*, i32, i32, %struct.cred*, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__key_link_begin(%struct.key*, %struct.key_type*, i8*, i64*) #1

declare dso_local %struct.key* @search_process_keyrings(%struct.key_type*, i8*, i32, %struct.cred*) #1

declare dso_local i32 @__key_link(%struct.key*, %struct.key*, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__key_link_end(%struct.key*, %struct.key_type*, i64) #1

declare dso_local i32 @kleave(i8*, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local %struct.key* @key_ref_to_ptr(%struct.key*) #1

declare dso_local i32 @__key_link_check_live_key(%struct.key*, %struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
