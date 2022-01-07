; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_sh_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_sh_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@sh_name.num = internal global [10 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ABS\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"COMMON\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.elfdump*, i32)* @sh_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sh_name(%struct.elfdump* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.elfdump*, align 8
  %5 = alloca i32, align 4
  store %struct.elfdump* %0, %struct.elfdump** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %10 [
    i32 128, label %7
    i32 130, label %8
    i32 129, label %9
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %28

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %28

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %28

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.elfdump*, %struct.elfdump** %4, align 8
  %13 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.elfdump*, %struct.elfdump** %4, align 8
  %18 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %3, align 8
  br label %28

25:                                               ; preds = %10
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @snprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sh_name.num, i64 0, i64 0), i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sh_name.num, i64 0, i64 0), i8** %3, align 8
  br label %28

28:                                               ; preds = %25, %16, %9, %8, %7
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
