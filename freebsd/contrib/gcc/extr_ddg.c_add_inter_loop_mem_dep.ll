; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_add_inter_loop_mem_dep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_add_inter_loop_mem_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@TRUE_DEP = common dso_local global i32 0, align 4
@MEM_DEP = common dso_local global i32 0, align 4
@OUTPUT_DEP = common dso_local global i32 0, align 4
@ANTI_DEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, %struct.TYPE_6__*)* @add_inter_loop_mem_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_inter_loop_mem_dep(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @mem_write_insn_p(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @mem_read_insn_p(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = load i32, i32* @TRUE_DEP, align 4
  %23 = load i32, i32* @MEM_DEP, align 4
  %24 = call i32 @create_ddg_dep_no_link(i32 %19, %struct.TYPE_6__* %20, %struct.TYPE_6__* %21, i32 %22, i32 %23, i32 1)
  br label %41

25:                                               ; preds = %12
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = load i32, i32* @OUTPUT_DEP, align 4
  %38 = load i32, i32* @MEM_DEP, align 4
  %39 = call i32 @create_ddg_dep_no_link(i32 %34, %struct.TYPE_6__* %35, %struct.TYPE_6__* %36, i32 %37, i32 %38, i32 1)
  br label %40

40:                                               ; preds = %33, %25
  br label %41

41:                                               ; preds = %40, %18
  br label %72

42:                                               ; preds = %3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @mem_read_insn_p(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %72

49:                                               ; preds = %42
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %49
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = load i32, i32* @ANTI_DEP, align 4
  %62 = load i32, i32* @MEM_DEP, align 4
  %63 = call i32 @create_ddg_dep_no_link(i32 %58, %struct.TYPE_6__* %59, %struct.TYPE_6__* %60, i32 %61, i32 %62, i32 1)
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = load i32, i32* @TRUE_DEP, align 4
  %68 = load i32, i32* @MEM_DEP, align 4
  %69 = call i32 @create_ddg_dep_no_link(i32 %64, %struct.TYPE_6__* %65, %struct.TYPE_6__* %66, i32 %67, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %57, %49
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %48, %71, %41
  ret void
}

declare dso_local i64 @mem_write_insn_p(i32) #1

declare dso_local i64 @mem_read_insn_p(i32) #1

declare dso_local i32 @create_ddg_dep_no_link(i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
