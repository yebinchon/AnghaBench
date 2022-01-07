; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_interps.c_interp_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_interps.c_interp_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interp = type { i32, %struct.interp* }

@interp_list = common dso_local global %struct.interp* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.interp* @interp_lookup(i8* %0) #0 {
  %2 = alloca %struct.interp*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.interp*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store %struct.interp* null, %struct.interp** %2, align 8
  br label %32

12:                                               ; preds = %7
  %13 = load %struct.interp*, %struct.interp** @interp_list, align 8
  store %struct.interp* %13, %struct.interp** %4, align 8
  br label %14

14:                                               ; preds = %27, %12
  %15 = load %struct.interp*, %struct.interp** %4, align 8
  %16 = icmp ne %struct.interp* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.interp*, %struct.interp** %4, align 8
  %19 = getelementptr inbounds %struct.interp, %struct.interp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strcmp(i32 %20, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load %struct.interp*, %struct.interp** %4, align 8
  store %struct.interp* %25, %struct.interp** %2, align 8
  br label %32

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.interp*, %struct.interp** %4, align 8
  %29 = getelementptr inbounds %struct.interp, %struct.interp* %28, i32 0, i32 1
  %30 = load %struct.interp*, %struct.interp** %29, align 8
  store %struct.interp* %30, %struct.interp** %4, align 8
  br label %14

31:                                               ; preds = %14
  store %struct.interp* null, %struct.interp** %2, align 8
  br label %32

32:                                               ; preds = %31, %24, %11
  %33 = load %struct.interp*, %struct.interp** %2, align 8
  ret %struct.interp* %33
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
