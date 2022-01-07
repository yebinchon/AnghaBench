; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_install_user_keyrings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_install_user_keyrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_struct = type { i32, %struct.key*, %struct.key* }
%struct.key = type { i32 }
%struct.cred = type { %struct.user_struct* }

@.str = private unnamed_addr constant [7 x i8] c"%p{%u}\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" = 0 [exist]\00", align 1
@key_user_keyring_mutex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"_uid.%u\00", align 1
@KEY_ALLOC_IN_QUOTA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"_uid_ses.%u\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @install_user_keyrings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.user_struct*, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  %8 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %8, %struct.cred** %3, align 8
  %9 = load %struct.cred*, %struct.cred** %3, align 8
  %10 = getelementptr inbounds %struct.cred, %struct.cred* %9, i32 0, i32 0
  %11 = load %struct.user_struct*, %struct.user_struct** %10, align 8
  store %struct.user_struct* %11, %struct.user_struct** %2, align 8
  %12 = load %struct.user_struct*, %struct.user_struct** %2, align 8
  %13 = load %struct.user_struct*, %struct.user_struct** %2, align 8
  %14 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @kenter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.user_struct* %12, i32 %15)
  %17 = load %struct.user_struct*, %struct.user_struct** %2, align 8
  %18 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %17, i32 0, i32 2
  %19 = load %struct.key*, %struct.key** %18, align 8
  %20 = icmp ne %struct.key* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %0
  %22 = load %struct.user_struct*, %struct.user_struct** %2, align 8
  %23 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %22, i32 0, i32 1
  %24 = load %struct.key*, %struct.key** %23, align 8
  %25 = icmp ne %struct.key* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %114

28:                                               ; preds = %21, %0
  %29 = call i32 @mutex_lock(i32* @key_user_keyring_mutex)
  store i32 0, i32* %7, align 4
  %30 = load %struct.user_struct*, %struct.user_struct** %2, align 8
  %31 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %30, i32 0, i32 2
  %32 = load %struct.key*, %struct.key** %31, align 8
  %33 = icmp ne %struct.key* %32, null
  br i1 %33, label %100, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %36 = load %struct.user_struct*, %struct.user_struct** %2, align 8
  %37 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %41 = call %struct.key* @find_keyring_by_name(i8* %40, i32 1)
  store %struct.key* %41, %struct.key** %4, align 8
  %42 = load %struct.key*, %struct.key** %4, align 8
  %43 = call i64 @IS_ERR(%struct.key* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %34
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %47 = load %struct.user_struct*, %struct.user_struct** %2, align 8
  %48 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.cred*, %struct.cred** %3, align 8
  %51 = load i32, i32* @KEY_ALLOC_IN_QUOTA, align 4
  %52 = call %struct.key* @keyring_alloc(i8* %46, i32 %49, i32 -1, %struct.cred* %50, i32 %51, i32* null)
  store %struct.key* %52, %struct.key** %4, align 8
  %53 = load %struct.key*, %struct.key** %4, align 8
  %54 = call i64 @IS_ERR(%struct.key* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load %struct.key*, %struct.key** %4, align 8
  %58 = call i32 @PTR_ERR(%struct.key* %57)
  store i32 %58, i32* %7, align 4
  br label %109

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %34
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %62 = load %struct.user_struct*, %struct.user_struct** %2, align 8
  %63 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %67 = call %struct.key* @find_keyring_by_name(i8* %66, i32 1)
  store %struct.key* %67, %struct.key** %5, align 8
  %68 = load %struct.key*, %struct.key** %5, align 8
  %69 = call i64 @IS_ERR(%struct.key* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %60
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %73 = load %struct.user_struct*, %struct.user_struct** %2, align 8
  %74 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.cred*, %struct.cred** %3, align 8
  %77 = load i32, i32* @KEY_ALLOC_IN_QUOTA, align 4
  %78 = call %struct.key* @keyring_alloc(i8* %72, i32 %75, i32 -1, %struct.cred* %76, i32 %77, i32* null)
  store %struct.key* %78, %struct.key** %5, align 8
  %79 = load %struct.key*, %struct.key** %5, align 8
  %80 = call i64 @IS_ERR(%struct.key* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load %struct.key*, %struct.key** %5, align 8
  %84 = call i32 @PTR_ERR(%struct.key* %83)
  store i32 %84, i32* %7, align 4
  br label %106

85:                                               ; preds = %71
  %86 = load %struct.key*, %struct.key** %5, align 8
  %87 = load %struct.key*, %struct.key** %4, align 8
  %88 = call i32 @key_link(%struct.key* %86, %struct.key* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %103

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %60
  %94 = load %struct.key*, %struct.key** %4, align 8
  %95 = load %struct.user_struct*, %struct.user_struct** %2, align 8
  %96 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %95, i32 0, i32 2
  store %struct.key* %94, %struct.key** %96, align 8
  %97 = load %struct.key*, %struct.key** %5, align 8
  %98 = load %struct.user_struct*, %struct.user_struct** %2, align 8
  %99 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %98, i32 0, i32 1
  store %struct.key* %97, %struct.key** %99, align 8
  br label %100

100:                                              ; preds = %93, %28
  %101 = call i32 @mutex_unlock(i32* @key_user_keyring_mutex)
  %102 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %114

103:                                              ; preds = %91
  %104 = load %struct.key*, %struct.key** %5, align 8
  %105 = call i32 @key_put(%struct.key* %104)
  br label %106

106:                                              ; preds = %103, %82
  %107 = load %struct.key*, %struct.key** %4, align 8
  %108 = call i32 @key_put(%struct.key* %107)
  br label %109

109:                                              ; preds = %106, %56
  %110 = call i32 @mutex_unlock(i32* @key_user_keyring_mutex)
  %111 = load i32, i32* %7, align 4
  %112 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %1, align 4
  br label %114

114:                                              ; preds = %109, %100, %26
  %115 = load i32, i32* %1, align 4
  ret i32 %115
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @kenter(i8*, %struct.user_struct*, i32) #1

declare dso_local i32 @kleave(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.key* @find_keyring_by_name(i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, %struct.cred*, i32, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @key_link(%struct.key*, %struct.key*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
