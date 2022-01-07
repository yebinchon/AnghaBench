; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-ext.c_cleanup_ext_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-ext.c_cleanup_ext_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ExtAuxRegister**, %struct.ExtAuxRegister**, %struct.ExtInstruction**, %struct.ExtAuxRegister* }
%struct.ExtInstruction = type { %struct.ExtAuxRegister* }
%struct.ExtAuxRegister = type { i32 }

@arc_extension_map = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@NUM_EXT_INST = common dso_local global i32 0, align 4
@NUM_EXT_CORE = common dso_local global i32 0, align 4
@NUM_EXT_COND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_ext_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_ext_map() #0 {
  %1 = alloca %struct.ExtAuxRegister*, align 8
  %2 = alloca %struct.ExtInstruction*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arc_extension_map, i32 0, i32 3), align 8
  store %struct.ExtAuxRegister* %4, %struct.ExtAuxRegister** %1, align 8
  %5 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %1, align 8
  %6 = icmp ne %struct.ExtAuxRegister* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %1, align 8
  %9 = call i32 @clean_aux_registers(%struct.ExtAuxRegister* %8)
  %10 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %1, align 8
  %11 = call i32 @free(%struct.ExtAuxRegister* %10)
  br label %12

12:                                               ; preds = %7, %0
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @NUM_EXT_INST, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load %struct.ExtInstruction**, %struct.ExtInstruction*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arc_extension_map, i32 0, i32 2), align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ExtInstruction*, %struct.ExtInstruction** %18, i64 %20
  %22 = load %struct.ExtInstruction*, %struct.ExtInstruction** %21, align 8
  store %struct.ExtInstruction* %22, %struct.ExtInstruction** %2, align 8
  %23 = load %struct.ExtInstruction*, %struct.ExtInstruction** %2, align 8
  %24 = icmp ne %struct.ExtInstruction* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.ExtInstruction*, %struct.ExtInstruction** %2, align 8
  %27 = getelementptr inbounds %struct.ExtInstruction, %struct.ExtInstruction* %26, i32 0, i32 0
  %28 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %27, align 8
  %29 = call i32 @free(%struct.ExtAuxRegister* %28)
  br label %30

30:                                               ; preds = %25, %17
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %13

34:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @NUM_EXT_CORE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.ExtAuxRegister**, %struct.ExtAuxRegister*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arc_extension_map, i32 0, i32 1), align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %40, i64 %42
  %44 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %43, align 8
  %45 = icmp ne %struct.ExtAuxRegister* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.ExtAuxRegister**, %struct.ExtAuxRegister*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arc_extension_map, i32 0, i32 1), align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %47, i64 %49
  %51 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %50, align 8
  %52 = call i32 @free(%struct.ExtAuxRegister* %51)
  br label %53

53:                                               ; preds = %46, %39
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %35

57:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %77, %57
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @NUM_EXT_COND, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load %struct.ExtAuxRegister**, %struct.ExtAuxRegister*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arc_extension_map, i32 0, i32 0), align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %63, i64 %65
  %67 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %66, align 8
  %68 = icmp ne %struct.ExtAuxRegister* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.ExtAuxRegister**, %struct.ExtAuxRegister*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arc_extension_map, i32 0, i32 0), align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %70, i64 %72
  %74 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %73, align 8
  %75 = call i32 @free(%struct.ExtAuxRegister* %74)
  br label %76

76:                                               ; preds = %69, %62
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %58

80:                                               ; preds = %58
  %81 = call i32 @memset(%struct.TYPE_3__* @arc_extension_map, i32 0, i32 4)
  ret void
}

declare dso_local i32 @clean_aux_registers(%struct.ExtAuxRegister*) #1

declare dso_local i32 @free(%struct.ExtAuxRegister*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
