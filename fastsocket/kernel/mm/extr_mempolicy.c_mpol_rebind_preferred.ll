; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mpol_rebind_preferred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mpol_rebind_preferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MPOL_F_STATIC_NODES = common dso_local global i32 0, align 4
@MPOL_F_LOCAL = common dso_local global i32 0, align 4
@MPOL_F_RELATIVE_NODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mempolicy*, i32*, i32)* @mpol_rebind_preferred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpol_rebind_preferred(%struct.mempolicy* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mempolicy* %0, %struct.mempolicy** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %10 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MPOL_F_STATIC_NODES, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %3
  %16 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %17 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @first_node(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @node_isset(i32 %22, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %15
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %30 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @MPOL_F_LOCAL, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %35 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %44

38:                                               ; preds = %15
  %39 = load i32, i32* @MPOL_F_LOCAL, align 4
  %40 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %41 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %27
  br label %93

45:                                               ; preds = %3
  %46 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %47 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MPOL_F_RELATIVE_NODES, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %54 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @mpol_relative_nodemask(i32* %7, i32* %55, i32* %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @first_node(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %62 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %92

64:                                               ; preds = %45
  %65 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %66 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MPOL_F_LOCAL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %64
  %72 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %73 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %77 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @node_remap(i32 %75, i32 %79, i32 %81)
  %83 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %84 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %89 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  br label %91

91:                                               ; preds = %71, %64
  br label %92

92:                                               ; preds = %91, %52
  br label %93

93:                                               ; preds = %92, %44
  ret void
}

declare dso_local i8* @first_node(i32) #1

declare dso_local i64 @node_isset(i32, i32) #1

declare dso_local i32 @mpol_relative_nodemask(i32*, i32*, i32*) #1

declare dso_local i32 @node_remap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
