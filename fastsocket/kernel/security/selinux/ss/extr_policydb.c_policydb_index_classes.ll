; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_policydb_index_classes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_policydb_index_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.TYPE_4__, i8*, i8*, %struct.TYPE_3__, i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@common_index = common dso_local global i32 0, align 4
@class_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*)* @policydb_index_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policydb_index_classes(%struct.policydb* %0) #0 {
  %2 = alloca %struct.policydb*, align 8
  %3 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %2, align 8
  %4 = load %struct.policydb*, %struct.policydb** %2, align 8
  %5 = getelementptr inbounds %struct.policydb, %struct.policydb* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmalloc(i32 %10, i32 %11)
  %13 = load %struct.policydb*, %struct.policydb** %2, align 8
  %14 = getelementptr inbounds %struct.policydb, %struct.policydb* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load %struct.policydb*, %struct.policydb** %2, align 8
  %16 = getelementptr inbounds %struct.policydb, %struct.policydb* %15, i32 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %79

22:                                               ; preds = %1
  %23 = load %struct.policydb*, %struct.policydb** %2, align 8
  %24 = getelementptr inbounds %struct.policydb, %struct.policydb* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @common_index, align 4
  %28 = load %struct.policydb*, %struct.policydb** %2, align 8
  %29 = call i32 @hashtab_map(i32 %26, i32 %27, %struct.policydb* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %79

33:                                               ; preds = %22
  %34 = load %struct.policydb*, %struct.policydb** %2, align 8
  %35 = getelementptr inbounds %struct.policydb, %struct.policydb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kmalloc(i32 %40, i32 %41)
  %43 = load %struct.policydb*, %struct.policydb** %2, align 8
  %44 = getelementptr inbounds %struct.policydb, %struct.policydb* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.policydb*, %struct.policydb** %2, align 8
  %46 = getelementptr inbounds %struct.policydb, %struct.policydb* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %33
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %79

52:                                               ; preds = %33
  %53 = load %struct.policydb*, %struct.policydb** %2, align 8
  %54 = getelementptr inbounds %struct.policydb, %struct.policydb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kmalloc(i32 %59, i32 %60)
  %62 = load %struct.policydb*, %struct.policydb** %2, align 8
  %63 = getelementptr inbounds %struct.policydb, %struct.policydb* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.policydb*, %struct.policydb** %2, align 8
  %65 = getelementptr inbounds %struct.policydb, %struct.policydb* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %52
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %79

71:                                               ; preds = %52
  %72 = load %struct.policydb*, %struct.policydb** %2, align 8
  %73 = getelementptr inbounds %struct.policydb, %struct.policydb* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @class_index, align 4
  %77 = load %struct.policydb*, %struct.policydb** %2, align 8
  %78 = call i32 @hashtab_map(i32 %75, i32 %76, %struct.policydb* %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %71, %68, %49, %32, %19
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @hashtab_map(i32, i32, %struct.policydb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
