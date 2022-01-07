; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_add_got_offset_hilo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_add_got_offset_hilo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32*, i32 }

@O_constant = common dso_local global i32 0, align 4
@HAVE_64BIT_ADDRESSES = common dso_local global i32 0, align 4
@mips_optimize = common dso_local global i32 0, align 4
@ADDRESS_ADDI_INSN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"t,r,j\00", align 1
@BFD_RELOC_LO16 = common dso_local global i32 0, align 4
@ADDRESS_ADD_INSN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"d,v,t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, i32)* @add_got_offset_hilo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_got_offset_hilo(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @O_constant, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @relax_start(i32* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @HAVE_64BIT_ADDRESSES, align 4
  %23 = call i32 @load_register(i32 %21, %struct.TYPE_6__* %7, i32 %22)
  %24 = call i32 (...) @relax_switch()
  %25 = load i32, i32* @mips_optimize, align 4
  store i32 %25, i32* %8, align 4
  store i32 2, i32* @mips_optimize, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @macro_build_lui(%struct.TYPE_6__* %7, i32 %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* @mips_optimize, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = load i32, i32* @ADDRESS_ADDI_INSN, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @BFD_RELOC_LO16, align 4
  %34 = call i32 @macro_build(%struct.TYPE_6__* %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  %35 = call i32 (...) @relax_end()
  %36 = load i32, i32* @ADDRESS_ADD_INSN, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @macro_build(%struct.TYPE_6__* null, i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @relax_start(i32*) #1

declare dso_local i32 @load_register(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @relax_switch(...) #1

declare dso_local i32 @macro_build_lui(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @macro_build(%struct.TYPE_6__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @relax_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
