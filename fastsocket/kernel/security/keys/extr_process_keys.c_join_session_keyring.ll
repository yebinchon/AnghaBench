; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_join_session_keyring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_join_session_keyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.key = type { i64 }

@EMLINK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@key_session_mutex = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i64 0, align 8
@KEY_ALLOC_IN_QUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @join_session_keyring(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = call i32 (...) @current_is_single_threaded()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @EMLINK, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %2, align 8
  br label %105

14:                                               ; preds = %1
  %15 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %15, %struct.cred** %5, align 8
  %16 = load %struct.cred*, %struct.cred** %5, align 8
  %17 = icmp ne %struct.cred* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* @ENOMEM, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %2, align 8
  br label %105

21:                                               ; preds = %14
  %22 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %22, %struct.cred** %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = load %struct.cred*, %struct.cred** %5, align 8
  %27 = call i64 @install_session_keyring_to_cred(%struct.cred* %26, %struct.key* null)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %101

31:                                               ; preds = %25
  %32 = load %struct.cred*, %struct.cred** %5, align 8
  %33 = getelementptr inbounds %struct.cred, %struct.cred* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load %struct.cred*, %struct.cred** %5, align 8
  %40 = call i64 @commit_creds(%struct.cred* %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %43, %31
  br label %97

46:                                               ; preds = %21
  %47 = call i32 @mutex_lock(i32* @key_session_mutex)
  %48 = load i8*, i8** %3, align 8
  %49 = call %struct.key* @find_keyring_by_name(i8* %48, i32 0)
  store %struct.key* %49, %struct.key** %6, align 8
  %50 = load %struct.key*, %struct.key** %6, align 8
  %51 = call i64 @PTR_ERR(%struct.key* %50)
  %52 = load i64, i64* @ENOKEY, align 8
  %53 = sub nsw i64 0, %52
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %46
  %56 = load i8*, i8** %3, align 8
  %57 = load %struct.cred*, %struct.cred** %4, align 8
  %58 = getelementptr inbounds %struct.cred, %struct.cred* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cred*, %struct.cred** %4, align 8
  %61 = getelementptr inbounds %struct.cred, %struct.cred* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.cred*, %struct.cred** %4, align 8
  %64 = load i32, i32* @KEY_ALLOC_IN_QUOTA, align 4
  %65 = call %struct.key* @keyring_alloc(i8* %56, i32 %59, i32 %62, %struct.cred* %63, i32 %64, i32* null)
  store %struct.key* %65, %struct.key** %6, align 8
  %66 = load %struct.key*, %struct.key** %6, align 8
  %67 = call i64 @IS_ERR(%struct.key* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load %struct.key*, %struct.key** %6, align 8
  %71 = call i64 @PTR_ERR(%struct.key* %70)
  store i64 %71, i64* %7, align 8
  br label %99

72:                                               ; preds = %55
  br label %81

73:                                               ; preds = %46
  %74 = load %struct.key*, %struct.key** %6, align 8
  %75 = call i64 @IS_ERR(%struct.key* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.key*, %struct.key** %6, align 8
  %79 = call i64 @PTR_ERR(%struct.key* %78)
  store i64 %79, i64* %7, align 8
  br label %99

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %72
  %82 = load %struct.cred*, %struct.cred** %5, align 8
  %83 = load %struct.key*, %struct.key** %6, align 8
  %84 = call i64 @install_session_keyring_to_cred(%struct.cred* %82, %struct.key* %83)
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %99

88:                                               ; preds = %81
  %89 = load %struct.cred*, %struct.cred** %5, align 8
  %90 = call i64 @commit_creds(%struct.cred* %89)
  %91 = call i32 @mutex_unlock(i32* @key_session_mutex)
  %92 = load %struct.key*, %struct.key** %6, align 8
  %93 = getelementptr inbounds %struct.key, %struct.key* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %7, align 8
  %95 = load %struct.key*, %struct.key** %6, align 8
  %96 = call i32 @key_put(%struct.key* %95)
  br label %97

97:                                               ; preds = %88, %45
  %98 = load i64, i64* %7, align 8
  store i64 %98, i64* %2, align 8
  br label %105

99:                                               ; preds = %87, %77, %69
  %100 = call i32 @mutex_unlock(i32* @key_session_mutex)
  br label %101

101:                                              ; preds = %99, %30
  %102 = load %struct.cred*, %struct.cred** %5, align 8
  %103 = call i32 @abort_creds(%struct.cred* %102)
  %104 = load i64, i64* %7, align 8
  store i64 %104, i64* %2, align 8
  br label %105

105:                                              ; preds = %101, %97, %18, %11
  %106 = load i64, i64* %2, align 8
  ret i64 %106
}

declare dso_local i32 @current_is_single_threaded(...) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i64 @install_session_keyring_to_cred(%struct.cred*, %struct.key*) #1

declare dso_local i64 @commit_creds(%struct.cred*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.key* @find_keyring_by_name(i8*, i32) #1

declare dso_local i64 @PTR_ERR(%struct.key*) #1

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, %struct.cred*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @abort_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
