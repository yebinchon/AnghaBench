; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_fill_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_fill_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_def = type { i32, i32, i32, %struct.insn_def* }
%struct.attr_desc = type { %struct.attr_value*, i32, i64 }
%struct.attr_value = type { i32 }
%struct.insn_ent = type { %struct.insn_def* }

@defs = common dso_local global %struct.insn_def* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.attr_desc*)* @fill_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_attr(%struct.attr_desc* %0) #0 {
  %2 = alloca %struct.attr_desc*, align 8
  %3 = alloca %struct.attr_value*, align 8
  %4 = alloca %struct.insn_ent*, align 8
  %5 = alloca %struct.insn_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.attr_desc* %0, %struct.attr_desc** %2, align 8
  %8 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %9 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %95

13:                                               ; preds = %1
  %14 = load %struct.insn_def*, %struct.insn_def** @defs, align 8
  store %struct.insn_def* %14, %struct.insn_def** %5, align 8
  br label %15

15:                                               ; preds = %91, %13
  %16 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %17 = icmp ne %struct.insn_def* %16, null
  br i1 %17, label %18, label %95

18:                                               ; preds = %15
  store i32* null, i32** %7, align 8
  %19 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %20 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %23 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @XVEC(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %65, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %31 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %34 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @XVECLEN(i32 %32, i32 %35)
  %37 = icmp slt i32 %29, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %28
  %39 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %40 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %43 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @XVECEXP(i32 %41, i32 %44, i32 %45)
  %47 = call i32* @XEXP(i32 %46, i32 0)
  %48 = call i32 @XSTR(i32* %47, i32 0)
  %49 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %50 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @strcmp_check(i32 %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %38
  %55 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %56 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %59 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @XVECEXP(i32 %57, i32 %60, i32 %61)
  %63 = call i32* @XEXP(i32 %62, i32 1)
  store i32* %63, i32** %7, align 8
  br label %64

64:                                               ; preds = %54, %38
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %28

68:                                               ; preds = %28
  br label %69

69:                                               ; preds = %68, %18
  %70 = load i32*, i32** %7, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %74 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %73, i32 0, i32 0
  %75 = load %struct.attr_value*, %struct.attr_value** %74, align 8
  store %struct.attr_value* %75, %struct.attr_value** %3, align 8
  br label %83

76:                                               ; preds = %69
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %79 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %80 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.attr_value* @get_attr_value(i32* %77, %struct.attr_desc* %78, i32 %81)
  store %struct.attr_value* %82, %struct.attr_value** %3, align 8
  br label %83

83:                                               ; preds = %76, %72
  %84 = call %struct.insn_ent* @oballoc(i32 8)
  store %struct.insn_ent* %84, %struct.insn_ent** %4, align 8
  %85 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %86 = load %struct.insn_ent*, %struct.insn_ent** %4, align 8
  %87 = getelementptr inbounds %struct.insn_ent, %struct.insn_ent* %86, i32 0, i32 0
  store %struct.insn_def* %85, %struct.insn_def** %87, align 8
  %88 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %89 = load %struct.insn_ent*, %struct.insn_ent** %4, align 8
  %90 = call i32 @insert_insn_ent(%struct.attr_value* %88, %struct.insn_ent* %89)
  br label %91

91:                                               ; preds = %83
  %92 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %93 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %92, i32 0, i32 3
  %94 = load %struct.insn_def*, %struct.insn_def** %93, align 8
  store %struct.insn_def* %94, %struct.insn_def** %5, align 8
  br label %15

95:                                               ; preds = %12, %15
  ret void
}

declare dso_local i64 @XVEC(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @strcmp_check(i32, i32) #1

declare dso_local i32 @XSTR(i32*, i32) #1

declare dso_local i32* @XEXP(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local %struct.attr_value* @get_attr_value(i32*, %struct.attr_desc*, i32) #1

declare dso_local %struct.insn_ent* @oballoc(i32) #1

declare dso_local i32 @insert_insn_ent(%struct.attr_value*, %struct.insn_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
