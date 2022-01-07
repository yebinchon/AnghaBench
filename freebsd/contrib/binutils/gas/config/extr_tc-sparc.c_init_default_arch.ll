; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-sparc.c_init_default_arch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-sparc.c_init_default_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparc_arch = type { i64, i32, i32 }

@default_arch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Invalid default architecture, broken assembler.\00", align 1
@max_architecture = common dso_local global i64 0, align 8
@SPARC_OPCODE_ARCH_BAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Bad opcode table, broken assembler.\00", align 1
@sparc_arch_size = common dso_local global i64 0, align 8
@default_arch_size = common dso_local global i64 0, align 8
@default_init_p = common dso_local global i32 0, align 4
@default_arch_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_default_arch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_default_arch() #0 {
  %1 = alloca %struct.sparc_arch*, align 8
  %2 = load i32, i32* @default_arch, align 4
  %3 = call %struct.sparc_arch* @lookup_arch(i32 %2)
  store %struct.sparc_arch* %3, %struct.sparc_arch** %1, align 8
  %4 = load %struct.sparc_arch*, %struct.sparc_arch** %1, align 8
  %5 = icmp eq %struct.sparc_arch* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = load %struct.sparc_arch*, %struct.sparc_arch** %1, align 8
  %8 = getelementptr inbounds %struct.sparc_arch, %struct.sparc_arch* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6, %0
  %12 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @as_fatal(i32 %12)
  br label %14

14:                                               ; preds = %11, %6
  %15 = load %struct.sparc_arch*, %struct.sparc_arch** %1, align 8
  %16 = getelementptr inbounds %struct.sparc_arch, %struct.sparc_arch* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @sparc_opcode_lookup_arch(i32 %17)
  store i64 %18, i64* @max_architecture, align 8
  %19 = load i64, i64* @max_architecture, align 8
  %20 = load i64, i64* @SPARC_OPCODE_ARCH_BAD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @as_fatal(i32 %23)
  br label %25

25:                                               ; preds = %22, %14
  %26 = load %struct.sparc_arch*, %struct.sparc_arch** %1, align 8
  %27 = getelementptr inbounds %struct.sparc_arch, %struct.sparc_arch* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* @sparc_arch_size, align 8
  store i64 %28, i64* @default_arch_size, align 8
  store i32 1, i32* @default_init_p, align 4
  %29 = load %struct.sparc_arch*, %struct.sparc_arch** %1, align 8
  %30 = getelementptr inbounds %struct.sparc_arch, %struct.sparc_arch* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* @default_arch_type, align 4
  ret void
}

declare dso_local %struct.sparc_arch* @lookup_arch(i32) #1

declare dso_local i32 @as_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @sparc_opcode_lookup_arch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
