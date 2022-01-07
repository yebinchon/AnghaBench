; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_flattree.c_flat_read_stringtable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_flattree.c_flat_read_stringtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf = type { i8*, i8* }

@.str = private unnamed_addr constant [40 x i8] c"String offset %d overruns string table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.inbuf*, i32)* @flat_read_stringtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @flat_read_stringtable(%struct.inbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.inbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.inbuf* %0, %struct.inbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.inbuf*, %struct.inbuf** %3, align 8
  %7 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %2, %33
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.inbuf*, %struct.inbuf** %3, align 8
  %15 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp uge i8* %13, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.inbuf*, %struct.inbuf** %3, align 8
  %21 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ult i8* %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %12
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %36

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  br label %12

36:                                               ; preds = %32
  %37 = load %struct.inbuf*, %struct.inbuf** %3, align 8
  %38 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i8* @xstrdup(i8* %42)
  ret i8* %43
}

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
