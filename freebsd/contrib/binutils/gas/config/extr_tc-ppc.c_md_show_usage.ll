; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_md_show_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_md_show_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [451 x i8] c"PowerPC options:\0A-a32\09\09\09generate ELF32/XCOFF32\0A-a64\09\09\09generate ELF64/XCOFF64\0A-u\09\09\09ignored\0A-mpwrx, -mpwr2\09\09generate code for POWER/2 (RIOS2)\0A-mpwr\09\09\09generate code for POWER (RIOS1)\0A-m601\09\09\09generate code for PowerPC 601\0A-mppc, -mppc32, -m603, -m604\0A\09\09\09generate code for PowerPC 603/604\0A-m403, -m405\09\09generate code for PowerPC 403/405\0A-m440\09\09\09generate code for PowerPC 440\0A-m7400, -m7410, -m7450, -m7455\0A\09\09\09generate code For PowerPC 7400/7410/7450/7455\0A\00", align 1
@.str.1 = private unnamed_addr constant [550 x i8] c"-mppc64, -m620\09\09generate code for PowerPC 620/625/630\0A-mppc64bridge\09\09generate code for PowerPC 64, including bridge insns\0A-mbooke64\09\09generate code for 64-bit PowerPC BookE\0A-mbooke, mbooke32\09generate code for 32-bit PowerPC BookE\0A-mpower4\09\09generate code for Power4 architecture\0A-mpower5\09\09generate code for Power5 architecture\0A-mpower6\09\09generate code for Power6 architecture\0A-mcell\09\09\09generate code for Cell Broadband Engine architecture\0A-mcom\09\09\09generate code Power/PowerPC common instructions\0A-many\09\09\09generate code for any architecture (PWR/PWRX/PPC)\0A\00", align 1
@.str.2 = private unnamed_addr constant [303 x i8] c"-maltivec\09\09generate code for AltiVec\0A-me300\09\09\09generate code for PowerPC e300 family\0A-me500, -me500x2\09generate code for Motorola e500 core complex\0A-mspe\09\09\09generate code for Motorola SPE instructions\0A-mregnames\09\09Allow symbolic names for registers\0A-mno-regnames\09\09Do not allow symbolic names for registers\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_show_usage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i8* @_(i8* getelementptr inbounds ([451 x i8], [451 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @fprintf(i32* %3, i8* %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @_(i8* getelementptr inbounds ([550 x i8], [550 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @fprintf(i32* %6, i8* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @_(i8* getelementptr inbounds ([303 x i8], [303 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @fprintf(i32* %9, i8* %10)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
