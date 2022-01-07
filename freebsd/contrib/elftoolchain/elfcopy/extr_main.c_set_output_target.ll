; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_set_output_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_set_output_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i8*, i8*, i32, i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: invalid target name\00", align 1
@ETF_ELF = common dso_local global i32 0, align 4
@ETF_EFI = common dso_local global i32 0, align 4
@ETF_PE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, i8*)* @set_output_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_output_target(%struct.elfcopy* %0, i8* %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32* @elftc_bfd_find_target(i8* %6)
  store i32* %7, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @errx(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @elftc_bfd_target_flavor(i32* %14)
  %16 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %17 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %19 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ETF_ELF, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %13
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @elftc_bfd_target_class(i32* %24)
  %26 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %27 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @elftc_bfd_target_byteorder(i32* %28)
  %30 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %31 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i8* @elftc_bfd_target_machine(i32* %32)
  %34 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %35 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %23, %13
  %37 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %38 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ETF_EFI, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %44 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ETF_PE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42, %36
  %49 = load i32*, i32** %5, align 8
  %50 = call i8* @elftc_bfd_target_machine(i32* %49)
  %51 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %52 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %56 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  ret void
}

declare dso_local i32* @elftc_bfd_find_target(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @elftc_bfd_target_flavor(i32*) #1

declare dso_local i32 @elftc_bfd_target_class(i32*) #1

declare dso_local i32 @elftc_bfd_target_byteorder(i32*) #1

declare dso_local i8* @elftc_bfd_target_machine(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
