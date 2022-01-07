; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_permission.c_key_task_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_permission.c_key_task_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.key = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@KEY_GRP_ALL = common dso_local global i32 0, align 4
@KEY_ALL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_task_permission(i32 %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cred* %1, %struct.cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.key* @key_ref_to_ptr(i32 %11)
  store %struct.key* %12, %struct.key** %8, align 8
  %13 = load %struct.key*, %struct.key** %8, align 8
  %14 = getelementptr inbounds %struct.key, %struct.key* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cred*, %struct.cred** %6, align 8
  %19 = getelementptr inbounds %struct.cred, %struct.cred* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %80

25:                                               ; preds = %3
  %26 = load %struct.key*, %struct.key** %8, align 8
  %27 = getelementptr inbounds %struct.key, %struct.key* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cred*, %struct.cred** %6, align 8
  %30 = getelementptr inbounds %struct.cred, %struct.cred* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.key*, %struct.key** %8, align 8
  %35 = getelementptr inbounds %struct.key, %struct.key* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 16
  store i32 %37, i32* %9, align 4
  br label %84

38:                                               ; preds = %25
  %39 = load %struct.key*, %struct.key** %8, align 8
  %40 = getelementptr inbounds %struct.key, %struct.key* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %79

43:                                               ; preds = %38
  %44 = load %struct.key*, %struct.key** %8, align 8
  %45 = getelementptr inbounds %struct.key, %struct.key* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @KEY_GRP_ALL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %43
  %51 = load %struct.key*, %struct.key** %8, align 8
  %52 = getelementptr inbounds %struct.key, %struct.key* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cred*, %struct.cred** %6, align 8
  %55 = getelementptr inbounds %struct.cred, %struct.cred* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.key*, %struct.key** %8, align 8
  %60 = getelementptr inbounds %struct.key, %struct.key* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %61, 8
  store i32 %62, i32* %9, align 4
  br label %84

63:                                               ; preds = %50
  %64 = load %struct.cred*, %struct.cred** %6, align 8
  %65 = getelementptr inbounds %struct.cred, %struct.cred* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.key*, %struct.key** %8, align 8
  %68 = getelementptr inbounds %struct.key, %struct.key* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @groups_search(i32 %66, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load %struct.key*, %struct.key** %8, align 8
  %75 = getelementptr inbounds %struct.key, %struct.key* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 8
  store i32 %77, i32* %9, align 4
  br label %84

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78, %43, %38
  br label %80

80:                                               ; preds = %79, %24
  %81 = load %struct.key*, %struct.key** %8, align 8
  %82 = getelementptr inbounds %struct.key, %struct.key* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80, %73, %58, %33
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @is_key_possessed(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load %struct.key*, %struct.key** %8, align 8
  %90 = getelementptr inbounds %struct.key, %struct.key* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = ashr i32 %91, 24
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %88, %84
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @KEY_ALL, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* @EACCES, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %112

107:                                              ; preds = %95
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.cred*, %struct.cred** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @security_key_permission(i32 %108, %struct.cred* %109, i32 %110)
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %107, %104
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i32 @groups_search(i32, i32) #1

declare dso_local i64 @is_key_possessed(i32) #1

declare dso_local i32 @security_key_permission(i32, %struct.cred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
