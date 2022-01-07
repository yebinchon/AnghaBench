; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_search_process_keyrings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_search_process_keyrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { i32 }
%struct.cred = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.request_key_auth* }
%struct.request_key_auth = type { %struct.cred* }

@EACCES = common dso_local global i32 0, align 4
@key_type_request_key_auth = common dso_local global %struct.key_type zeroinitializer, align 4
@ENOKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @search_process_keyrings(%struct.key_type* %0, i8* %1, i32 %2, %struct.cred* %3) #0 {
  %5 = alloca %struct.key_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cred*, align 8
  %9 = alloca %struct.request_key_auth*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.key_type* %0, %struct.key_type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.cred* %3, %struct.cred** %8, align 8
  %13 = load i32, i32* @EACCES, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i64 @ERR_PTR(i32 %14)
  store i64 %15, i64* %11, align 8
  %16 = call i32 (...) @might_sleep()
  %17 = load %struct.key_type*, %struct.key_type** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.cred*, %struct.cred** %8, align 8
  %21 = call i64 @search_my_process_keyrings(%struct.key_type* %17, i8* %18, i32 %19, i32 0, %struct.cred* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @IS_ERR(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %110

26:                                               ; preds = %4
  %27 = load i64, i64* %10, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.cred*, %struct.cred** %8, align 8
  %29 = getelementptr inbounds %struct.cred, %struct.cred* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %82

32:                                               ; preds = %26
  %33 = load %struct.cred*, %struct.cred** %8, align 8
  %34 = call %struct.cred* (...) @current_cred()
  %35 = icmp eq %struct.cred* %33, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %32
  %37 = load %struct.key_type*, %struct.key_type** %5, align 8
  %38 = icmp ne %struct.key_type* %37, @key_type_request_key_auth
  br i1 %38, label %39, label %82

39:                                               ; preds = %36
  %40 = load %struct.cred*, %struct.cred** %8, align 8
  %41 = getelementptr inbounds %struct.cred, %struct.cred* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @down_read(i32* %43)
  %45 = load %struct.cred*, %struct.cred** %8, align 8
  %46 = getelementptr inbounds %struct.cred, %struct.cred* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i64 @key_validate(%struct.TYPE_4__* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %39
  %51 = load %struct.cred*, %struct.cred** %8, align 8
  %52 = getelementptr inbounds %struct.cred, %struct.cred* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.request_key_auth*, %struct.request_key_auth** %55, align 8
  store %struct.request_key_auth* %56, %struct.request_key_auth** %9, align 8
  %57 = load %struct.key_type*, %struct.key_type** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.request_key_auth*, %struct.request_key_auth** %9, align 8
  %61 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %60, i32 0, i32 0
  %62 = load %struct.cred*, %struct.cred** %61, align 8
  %63 = call i64 @search_process_keyrings(%struct.key_type* %57, i8* %58, i32 %59, %struct.cred* %62)
  store i64 %63, i64* %10, align 8
  %64 = load %struct.cred*, %struct.cred** %8, align 8
  %65 = getelementptr inbounds %struct.cred, %struct.cred* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @up_read(i32* %67)
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @IS_ERR(i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %50
  br label %110

73:                                               ; preds = %50
  %74 = load i64, i64* %10, align 8
  store i64 %74, i64* %11, align 8
  br label %81

75:                                               ; preds = %39
  %76 = load %struct.cred*, %struct.cred** %8, align 8
  %77 = getelementptr inbounds %struct.cred, %struct.cred* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i32 @up_read(i32* %79)
  br label %81

81:                                               ; preds = %75, %73
  br label %82

82:                                               ; preds = %81, %36, %32, %26
  %83 = load i64, i64* %12, align 8
  %84 = load i32, i32* @ENOKEY, align 4
  %85 = sub nsw i32 0, %84
  %86 = call i64 @ERR_PTR(i32 %85)
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load i64, i64* %11, align 8
  %90 = load i32, i32* @ENOKEY, align 4
  %91 = sub nsw i32 0, %90
  %92 = call i64 @ERR_PTR(i32 %91)
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88, %82
  %95 = load i32, i32* @ENOKEY, align 4
  %96 = sub nsw i32 0, %95
  %97 = call i64 @ERR_PTR(i32 %96)
  store i64 %97, i64* %10, align 8
  br label %109

98:                                               ; preds = %88
  %99 = load i64, i64* %12, align 8
  %100 = load i32, i32* @EACCES, align 4
  %101 = sub nsw i32 0, %100
  %102 = call i64 @ERR_PTR(i32 %101)
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i64, i64* %11, align 8
  store i64 %105, i64* %10, align 8
  br label %108

106:                                              ; preds = %98
  %107 = load i64, i64* %12, align 8
  store i64 %107, i64* %10, align 8
  br label %108

108:                                              ; preds = %106, %104
  br label %109

109:                                              ; preds = %108, %94
  br label %110

110:                                              ; preds = %109, %72, %25
  %111 = load i64, i64* %10, align 8
  ret i64 %111
}

declare dso_local i64 @ERR_PTR(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @search_my_process_keyrings(%struct.key_type*, i8*, i32, i32, %struct.cred*) #1

declare dso_local i32 @IS_ERR(i64) #1

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @key_validate(%struct.TYPE_4__*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
