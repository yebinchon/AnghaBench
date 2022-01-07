; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_policydb_context_isvalid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_policydb_context_isvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.user_datum**, %struct.role_datum**, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.user_datum = type { i32 }
%struct.role_datum = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.context = type { i32, i32, i64 }

@OBJECT_R_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @policydb_context_isvalid(%struct.policydb* %0, %struct.context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.role_datum*, align 8
  %7 = alloca %struct.user_datum*, align 8
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store %struct.context* %1, %struct.context** %5, align 8
  %8 = load %struct.context*, %struct.context** %5, align 8
  %9 = getelementptr inbounds %struct.context, %struct.context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.context*, %struct.context** %5, align 8
  %14 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.policydb*, %struct.policydb** %4, align 8
  %17 = getelementptr inbounds %struct.policydb, %struct.policydb* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %111

22:                                               ; preds = %12
  %23 = load %struct.context*, %struct.context** %5, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.context*, %struct.context** %5, align 8
  %29 = getelementptr inbounds %struct.context, %struct.context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.policydb*, %struct.policydb** %4, align 8
  %32 = getelementptr inbounds %struct.policydb, %struct.policydb* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27, %22
  store i32 0, i32* %3, align 4
  br label %111

37:                                               ; preds = %27
  %38 = load %struct.context*, %struct.context** %5, align 8
  %39 = getelementptr inbounds %struct.context, %struct.context* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.context*, %struct.context** %5, align 8
  %44 = getelementptr inbounds %struct.context, %struct.context* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.policydb*, %struct.policydb** %4, align 8
  %47 = getelementptr inbounds %struct.policydb, %struct.policydb* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42, %37
  store i32 0, i32* %3, align 4
  br label %111

52:                                               ; preds = %42
  %53 = load %struct.context*, %struct.context** %5, align 8
  %54 = getelementptr inbounds %struct.context, %struct.context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @OBJECT_R_VAL, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %104

58:                                               ; preds = %52
  %59 = load %struct.policydb*, %struct.policydb** %4, align 8
  %60 = getelementptr inbounds %struct.policydb, %struct.policydb* %59, i32 0, i32 1
  %61 = load %struct.role_datum**, %struct.role_datum*** %60, align 8
  %62 = load %struct.context*, %struct.context** %5, align 8
  %63 = getelementptr inbounds %struct.context, %struct.context* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.role_datum*, %struct.role_datum** %61, i64 %66
  %68 = load %struct.role_datum*, %struct.role_datum** %67, align 8
  store %struct.role_datum* %68, %struct.role_datum** %6, align 8
  %69 = load %struct.role_datum*, %struct.role_datum** %6, align 8
  %70 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %69, i32 0, i32 0
  %71 = load %struct.context*, %struct.context** %5, align 8
  %72 = getelementptr inbounds %struct.context, %struct.context* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, 1
  %75 = trunc i64 %74 to i32
  %76 = call i32 @ebitmap_get_bit(i32* %70, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %111

79:                                               ; preds = %58
  %80 = load %struct.policydb*, %struct.policydb** %4, align 8
  %81 = getelementptr inbounds %struct.policydb, %struct.policydb* %80, i32 0, i32 0
  %82 = load %struct.user_datum**, %struct.user_datum*** %81, align 8
  %83 = load %struct.context*, %struct.context** %5, align 8
  %84 = getelementptr inbounds %struct.context, %struct.context* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.user_datum*, %struct.user_datum** %82, i64 %87
  %89 = load %struct.user_datum*, %struct.user_datum** %88, align 8
  store %struct.user_datum* %89, %struct.user_datum** %7, align 8
  %90 = load %struct.user_datum*, %struct.user_datum** %7, align 8
  %91 = icmp ne %struct.user_datum* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %111

93:                                               ; preds = %79
  %94 = load %struct.user_datum*, %struct.user_datum** %7, align 8
  %95 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %94, i32 0, i32 0
  %96 = load %struct.context*, %struct.context** %5, align 8
  %97 = getelementptr inbounds %struct.context, %struct.context* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = call i32 @ebitmap_get_bit(i32* %95, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %111

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %52
  %105 = load %struct.policydb*, %struct.policydb** %4, align 8
  %106 = load %struct.context*, %struct.context** %5, align 8
  %107 = call i32 @mls_context_isvalid(%struct.policydb* %105, %struct.context* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %111

110:                                              ; preds = %104
  store i32 1, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %109, %102, %92, %78, %51, %36, %21
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @ebitmap_get_bit(i32*, i32) #1

declare dso_local i32 @mls_context_isvalid(%struct.policydb*, %struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
