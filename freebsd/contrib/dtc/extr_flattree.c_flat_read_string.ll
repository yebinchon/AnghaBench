; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_flattree.c_flat_read_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_flattree.c_flat_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf = type { i8*, i8* }

@.str = private unnamed_addr constant [48 x i8] c"Premature end of data parsing flat device tree\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.inbuf*)* @flat_read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @flat_read_string(%struct.inbuf* %0) #0 {
  %2 = alloca %struct.inbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.inbuf* %0, %struct.inbuf** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.inbuf*, %struct.inbuf** %2, align 8
  %7 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.inbuf*, %struct.inbuf** %2, align 8
  %12 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = icmp uge i8* %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %9, label %26

26:                                               ; preds = %20
  %27 = load %struct.inbuf*, %struct.inbuf** %2, align 8
  %28 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @xstrdup(i8* %29)
  store i8* %30, i8** %5, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.inbuf*, %struct.inbuf** %2, align 8
  %33 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = sext i32 %31 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %33, align 8
  %37 = load %struct.inbuf*, %struct.inbuf** %2, align 8
  %38 = call i32 @flat_realign(%struct.inbuf* %37, i32 4)
  %39 = load i8*, i8** %5, align 8
  ret i8* %39
}

declare dso_local i32 @die(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @flat_realign(%struct.inbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
