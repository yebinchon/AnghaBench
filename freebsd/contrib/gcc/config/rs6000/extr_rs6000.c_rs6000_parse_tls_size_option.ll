; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_parse_tls_size_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_parse_tls_size_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rs6000_tls_size_string = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"16\00", align 1
@rs6000_tls_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"bad value %qs for -mtls-size switch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rs6000_parse_tls_size_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs6000_parse_tls_size_option() #0 {
  %1 = load i64, i64* @rs6000_tls_size_string, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %25

4:                                                ; preds = %0
  %5 = load i64, i64* @rs6000_tls_size_string, align 8
  %6 = call i64 @strcmp(i64 %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i32 16, i32* @rs6000_tls_size, align 4
  br label %24

9:                                                ; preds = %4
  %10 = load i64, i64* @rs6000_tls_size_string, align 8
  %11 = call i64 @strcmp(i64 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 32, i32* @rs6000_tls_size, align 4
  br label %23

14:                                               ; preds = %9
  %15 = load i64, i64* @rs6000_tls_size_string, align 8
  %16 = call i64 @strcmp(i64 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 64, i32* @rs6000_tls_size, align 4
  br label %22

19:                                               ; preds = %14
  %20 = load i64, i64* @rs6000_tls_size_string, align 8
  %21 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %19, %18
  br label %23

23:                                               ; preds = %22, %13
  br label %24

24:                                               ; preds = %23, %8
  br label %25

25:                                               ; preds = %3, %24
  ret void
}

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
