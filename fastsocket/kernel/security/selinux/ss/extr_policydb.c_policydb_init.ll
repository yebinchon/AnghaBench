; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_policydb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_policydb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SYM_NUM = common dso_local global i32 0, align 4
@symtab_sizes = common dso_local global i32* null, align 8
@rangetr_hash = common dso_local global i32 0, align 4
@rangetr_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*)* @policydb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policydb_init(%struct.policydb* %0) #0 {
  %2 = alloca %struct.policydb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %2, align 8
  %5 = load %struct.policydb*, %struct.policydb** %2, align 8
  %6 = call i32 @memset(%struct.policydb* %5, i32 0, i32 24)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SYM_NUM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load %struct.policydb*, %struct.policydb** %2, align 8
  %13 = getelementptr inbounds %struct.policydb, %struct.policydb* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = load i32*, i32** @symtab_sizes, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @symtab_init(%struct.TYPE_2__* %17, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  br label %70

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %7

31:                                               ; preds = %7
  %32 = load %struct.policydb*, %struct.policydb** %2, align 8
  %33 = getelementptr inbounds %struct.policydb, %struct.policydb* %32, i32 0, i32 4
  %34 = call i32 @avtab_init(i32* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %70

38:                                               ; preds = %31
  %39 = load %struct.policydb*, %struct.policydb** %2, align 8
  %40 = call i32 @roles_init(%struct.policydb* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %70

44:                                               ; preds = %38
  %45 = load %struct.policydb*, %struct.policydb** %2, align 8
  %46 = call i32 @cond_policydb_init(%struct.policydb* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %70

50:                                               ; preds = %44
  %51 = load i32, i32* @rangetr_hash, align 4
  %52 = load i32, i32* @rangetr_cmp, align 4
  %53 = call i32 @hashtab_create(i32 %51, i32 %52, i32 256)
  %54 = load %struct.policydb*, %struct.policydb** %2, align 8
  %55 = getelementptr inbounds %struct.policydb, %struct.policydb* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.policydb*, %struct.policydb** %2, align 8
  %57 = getelementptr inbounds %struct.policydb, %struct.policydb* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %70

61:                                               ; preds = %50
  %62 = load %struct.policydb*, %struct.policydb** %2, align 8
  %63 = getelementptr inbounds %struct.policydb, %struct.policydb* %62, i32 0, i32 2
  %64 = call i32 @ebitmap_init(i32* %63)
  %65 = load %struct.policydb*, %struct.policydb** %2, align 8
  %66 = getelementptr inbounds %struct.policydb, %struct.policydb* %65, i32 0, i32 1
  %67 = call i32 @ebitmap_init(i32* %66)
  br label %68

68:                                               ; preds = %88, %61
  %69 = load i32, i32* %4, align 4
  ret i32 %69

70:                                               ; preds = %60, %49, %43, %37, %26
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %85, %70
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @SYM_NUM, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load %struct.policydb*, %struct.policydb** %2, align 8
  %77 = getelementptr inbounds %struct.policydb, %struct.policydb* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @hashtab_destroy(i32 %83)
  br label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %71

88:                                               ; preds = %71
  br label %68
}

declare dso_local i32 @memset(%struct.policydb*, i32, i32) #1

declare dso_local i32 @symtab_init(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @avtab_init(i32*) #1

declare dso_local i32 @roles_init(%struct.policydb*) #1

declare dso_local i32 @cond_policydb_init(%struct.policydb*) #1

declare dso_local i32 @hashtab_create(i32, i32, i32) #1

declare dso_local i32 @ebitmap_init(i32*) #1

declare dso_local i32 @hashtab_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
