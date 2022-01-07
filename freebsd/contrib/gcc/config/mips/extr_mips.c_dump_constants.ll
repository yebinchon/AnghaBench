; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_dump_constants.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_dump_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips16_constant = type { %struct.mips16_constant*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips16_constant*, i32)* @dump_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_constants(%struct.mips16_constant* %0, i32 %1) #0 {
  %3 = alloca %struct.mips16_constant*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mips16_constant*, align 8
  %6 = alloca %struct.mips16_constant*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mips16_constant* %0, %struct.mips16_constant** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.mips16_constant*, %struct.mips16_constant** %3, align 8
  store %struct.mips16_constant* %9, %struct.mips16_constant** %5, align 8
  br label %10

10:                                               ; preds = %54, %2
  %11 = load %struct.mips16_constant*, %struct.mips16_constant** %5, align 8
  %12 = icmp ne %struct.mips16_constant* %11, null
  br i1 %12, label %13, label %56

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.mips16_constant*, %struct.mips16_constant** %5, align 8
  %16 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @GET_MODE_SIZE(i32 %17)
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.mips16_constant*, %struct.mips16_constant** %5, align 8
  %22 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GET_MODE_SIZE(i32 %23)
  %25 = call i32 @floor_log2(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @GEN_INT(i32 %26)
  %28 = call i32 @gen_align(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @emit_insn_after(i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %20, %13
  %32 = load %struct.mips16_constant*, %struct.mips16_constant** %5, align 8
  %33 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @GET_MODE_SIZE(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.mips16_constant*, %struct.mips16_constant** %5, align 8
  %37 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @emit_label_after(i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.mips16_constant*, %struct.mips16_constant** %5, align 8
  %42 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mips16_constant*, %struct.mips16_constant** %5, align 8
  %45 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @dump_constants_1(i32 %43, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.mips16_constant*, %struct.mips16_constant** %5, align 8
  %50 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %49, i32 0, i32 0
  %51 = load %struct.mips16_constant*, %struct.mips16_constant** %50, align 8
  store %struct.mips16_constant* %51, %struct.mips16_constant** %6, align 8
  %52 = load %struct.mips16_constant*, %struct.mips16_constant** %5, align 8
  %53 = call i32 @free(%struct.mips16_constant* %52)
  br label %54

54:                                               ; preds = %31
  %55 = load %struct.mips16_constant*, %struct.mips16_constant** %6, align 8
  store %struct.mips16_constant* %55, %struct.mips16_constant** %5, align 8
  br label %10

56:                                               ; preds = %10
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @emit_barrier_after(i32 %57)
  ret void
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @floor_log2(i32) #1

declare dso_local i32 @emit_insn_after(i32, i32) #1

declare dso_local i32 @gen_align(i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @emit_label_after(i32, i32) #1

declare dso_local i32 @dump_constants_1(i32, i32, i32) #1

declare dso_local i32 @free(%struct.mips16_constant*) #1

declare dso_local i32 @emit_barrier_after(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
