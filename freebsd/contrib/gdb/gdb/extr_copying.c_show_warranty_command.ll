; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_copying.c_show_warranty_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_copying.c_show_warranty_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@immediate_quit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"\09\09\09    NO WARRANTY\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\0A\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\0A\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\0A\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"PROVIDE THE PROGRAM \22AS IS\22 WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\0A\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\0A\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\0A\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\0A\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"REPAIR OR CORRECTION.\0A\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\0A\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\0A\00", align 1
@.str.13 = private unnamed_addr constant [76 x i8] c"REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\0A\00", align 1
@.str.14 = private unnamed_addr constant [77 x i8] c"INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\0A\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\0A\00", align 1
@.str.16 = private unnamed_addr constant [74 x i8] c"TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\0A\00", align 1
@.str.17 = private unnamed_addr constant [76 x i8] c"YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\0A\00", align 1
@.str.18 = private unnamed_addr constant [71 x i8] c"PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"POSSIBILITY OF SUCH DAMAGES.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @show_warranty_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_warranty_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @immediate_quit, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @immediate_quit, align 4
  %7 = call i32 @printf_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @printf_filtered(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @printf_filtered(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @printf_filtered(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 @printf_filtered(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 @printf_filtered(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 @printf_filtered(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0))
  %15 = call i32 @printf_filtered(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0))
  %16 = call i32 @printf_filtered(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0))
  %17 = call i32 @printf_filtered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %18 = call i32 @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @printf_filtered(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.11, i64 0, i64 0))
  %20 = call i32 @printf_filtered(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0))
  %21 = call i32 @printf_filtered(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.13, i64 0, i64 0))
  %22 = call i32 @printf_filtered(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.14, i64 0, i64 0))
  %23 = call i32 @printf_filtered(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0))
  %24 = call i32 @printf_filtered(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.16, i64 0, i64 0))
  %25 = call i32 @printf_filtered(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.17, i64 0, i64 0))
  %26 = call i32 @printf_filtered(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.18, i64 0, i64 0))
  %27 = call i32 @printf_filtered(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0))
  %28 = call i32 @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @immediate_quit, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* @immediate_quit, align 4
  ret void
}

declare dso_local i32 @printf_filtered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
