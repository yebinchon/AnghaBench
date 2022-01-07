; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mpol_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mpol_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i16, i16, i32 }

@.str = private unnamed_addr constant [39 x i8] c"setting mode %d flags %d nodes[0] %lx\0A\00", align 1
@MPOL_DEFAULT = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@MPOL_PREFERRED = common dso_local global i16 0, align 2
@MPOL_F_STATIC_NODES = common dso_local global i16 0, align 2
@MPOL_F_RELATIVE_NODES = common dso_local global i16 0, align 2
@policy_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mempolicy* (i16, i16, i32*)* @mpol_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mempolicy* @mpol_new(i16 zeroext %0, i16 zeroext %1, i32* %2) #0 {
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mempolicy*, align 8
  store i16 %0, i16* %5, align 2
  store i16 %1, i16* %6, align 2
  store i32* %2, i32** %7, align 8
  %9 = load i16, i16* %5, align 2
  %10 = load i16, i16* %6, align 2
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @nodes_addr(i32 %15)
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i32 [ %18, %13 ], [ -1, %19 ]
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i16 zeroext %9, i16 zeroext %10, i32 %21)
  %23 = load i16, i16* %5, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* @MPOL_DEFAULT, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @nodes_empty(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.mempolicy* @ERR_PTR(i32 %38)
  store %struct.mempolicy* %39, %struct.mempolicy** %4, align 8
  br label %108

40:                                               ; preds = %31, %28
  store %struct.mempolicy* null, %struct.mempolicy** %4, align 8
  br label %108

41:                                               ; preds = %20
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @VM_BUG_ON(i32 %45)
  %47 = load i16, i16* %5, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* @MPOL_PREFERRED, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %41
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @nodes_empty(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  %58 = load i16, i16* %6, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16, i16* @MPOL_F_STATIC_NODES, align 2
  %61 = zext i16 %60 to i32
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load i16, i16* %6, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* @MPOL_F_RELATIVE_NODES, align 2
  %68 = zext i16 %67 to i32
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64, %57
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.mempolicy* @ERR_PTR(i32 %73)
  store %struct.mempolicy* %74, %struct.mempolicy** %4, align 8
  br label %108

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %52
  br label %87

77:                                               ; preds = %41
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @nodes_empty(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  %85 = call %struct.mempolicy* @ERR_PTR(i32 %84)
  store %struct.mempolicy* %85, %struct.mempolicy** %4, align 8
  br label %108

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %76
  %88 = load i32, i32* @policy_cache, align 4
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call %struct.mempolicy* @kmem_cache_alloc(i32 %88, i32 %89)
  store %struct.mempolicy* %90, %struct.mempolicy** %8, align 8
  %91 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %92 = icmp ne %struct.mempolicy* %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  %96 = call %struct.mempolicy* @ERR_PTR(i32 %95)
  store %struct.mempolicy* %96, %struct.mempolicy** %4, align 8
  br label %108

97:                                               ; preds = %87
  %98 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %99 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %98, i32 0, i32 2
  %100 = call i32 @atomic_set(i32* %99, i32 1)
  %101 = load i16, i16* %5, align 2
  %102 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %103 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %102, i32 0, i32 0
  store i16 %101, i16* %103, align 4
  %104 = load i16, i16* %6, align 2
  %105 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %106 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %105, i32 0, i32 1
  store i16 %104, i16* %106, align 2
  %107 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  store %struct.mempolicy* %107, %struct.mempolicy** %4, align 8
  br label %108

108:                                              ; preds = %97, %93, %82, %71, %40, %36
  %109 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  ret %struct.mempolicy* %109
}

declare dso_local i32 @pr_debug(i8*, i16 zeroext, i16 zeroext, i32) #1

declare dso_local i32* @nodes_addr(i32) #1

declare dso_local i64 @nodes_empty(i32) #1

declare dso_local %struct.mempolicy* @ERR_PTR(i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local %struct.mempolicy* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
