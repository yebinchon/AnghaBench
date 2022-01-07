; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_context_struct_to_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_context_struct_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i8**, i8** }
%struct.context = type { i32, i32, i32, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@policydb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s:%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, i8**, i64*)* @context_struct_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_struct_to_string(%struct.context* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.context*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  store %struct.context* %0, %struct.context** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i8**, i8*** %6, align 8
  store i8* null, i8** %9, align 8
  %10 = load i64*, i64** %7, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.context*, %struct.context** %5, align 8
  %12 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = load %struct.context*, %struct.context** %5, align 8
  %17 = getelementptr inbounds %struct.context, %struct.context* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %7, align 8
  store i64 %18, i64* %19, align 8
  %20 = load %struct.context*, %struct.context** %5, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call i8* @kstrdup(i32 %22, i32 %23)
  %25 = load i8**, i8*** %6, align 8
  store i8* %24, i8** %25, align 8
  %26 = load i8**, i8*** %6, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %15
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %152

32:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %152

33:                                               ; preds = %3
  %34 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policydb, i32 0, i32 0), align 8
  %35 = load %struct.context*, %struct.context** %5, align 8
  %36 = getelementptr inbounds %struct.context, %struct.context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %34, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = add nsw i64 %42, 1
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %43
  store i64 %46, i64* %44, align 8
  %47 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policydb, i32 0, i32 1), align 8
  %48 = load %struct.context*, %struct.context** %5, align 8
  %49 = getelementptr inbounds %struct.context, %struct.context* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %47, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = add nsw i64 %55, 1
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %56
  store i64 %59, i64* %57, align 8
  %60 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policydb, i32 0, i32 2), align 8
  %61 = load %struct.context*, %struct.context** %5, align 8
  %62 = getelementptr inbounds %struct.context, %struct.context* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %60, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = add nsw i64 %68, 1
  %70 = load i64*, i64** %7, align 8
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %69
  store i64 %72, i64* %70, align 8
  %73 = load %struct.context*, %struct.context** %5, align 8
  %74 = call i64 @mls_compute_context_len(%struct.context* %73)
  %75 = load i64*, i64** %7, align 8
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %74
  store i64 %77, i64* %75, align 8
  %78 = load i64*, i64** %7, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @GFP_ATOMIC, align 4
  %81 = call i8* @kmalloc(i64 %79, i32 %80)
  store i8* %81, i8** %8, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %33
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %152

87:                                               ; preds = %33
  %88 = load i8*, i8** %8, align 8
  %89 = load i8**, i8*** %6, align 8
  store i8* %88, i8** %89, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policydb, i32 0, i32 0), align 8
  %92 = load %struct.context*, %struct.context** %5, align 8
  %93 = getelementptr inbounds %struct.context, %struct.context* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %91, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policydb, i32 0, i32 1), align 8
  %100 = load %struct.context*, %struct.context** %5, align 8
  %101 = getelementptr inbounds %struct.context, %struct.context* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %99, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policydb, i32 0, i32 2), align 8
  %108 = load %struct.context*, %struct.context** %5, align 8
  %109 = getelementptr inbounds %struct.context, %struct.context* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %107, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @sprintf(i8* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %98, i8* %106, i8* %114)
  %116 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policydb, i32 0, i32 0), align 8
  %117 = load %struct.context*, %struct.context** %5, align 8
  %118 = getelementptr inbounds %struct.context, %struct.context* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %116, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @strlen(i8* %123)
  %125 = add nsw i64 %124, 1
  %126 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policydb, i32 0, i32 1), align 8
  %127 = load %struct.context*, %struct.context** %5, align 8
  %128 = getelementptr inbounds %struct.context, %struct.context* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %126, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @strlen(i8* %133)
  %135 = add nsw i64 %125, %134
  %136 = add nsw i64 %135, 1
  %137 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policydb, i32 0, i32 2), align 8
  %138 = load %struct.context*, %struct.context** %5, align 8
  %139 = getelementptr inbounds %struct.context, %struct.context* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %137, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @strlen(i8* %144)
  %146 = add nsw i64 %136, %145
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 %146
  store i8* %148, i8** %8, align 8
  %149 = load %struct.context*, %struct.context** %5, align 8
  %150 = call i32 @mls_sid_to_context(%struct.context* %149, i8** %8)
  %151 = load i8*, i8** %8, align 8
  store i8 0, i8* %151, align 1
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %87, %84, %32, %29
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @mls_compute_context_len(%struct.context*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @mls_sid_to_context(%struct.context*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
