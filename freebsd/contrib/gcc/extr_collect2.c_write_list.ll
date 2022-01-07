; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_write_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_write_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.id = type { i32, %struct.id* }

@.str = private unnamed_addr constant [8 x i8] c"%sx%d,\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.id*)* @write_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_list(i32* %0, i8* %1, %struct.id* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.id*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.id* %2, %struct.id** %6, align 8
  br label %7

7:                                                ; preds = %10, %3
  %8 = load %struct.id*, %struct.id** %6, align 8
  %9 = icmp ne %struct.id* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.id*, %struct.id** %6, align 8
  %14 = getelementptr inbounds %struct.id, %struct.id* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @fprintf(i32* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %15)
  %17 = load %struct.id*, %struct.id** %6, align 8
  %18 = getelementptr inbounds %struct.id, %struct.id* %17, i32 0, i32 1
  %19 = load %struct.id*, %struct.id** %18, align 8
  store %struct.id* %19, %struct.id** %6, align 8
  br label %7

20:                                               ; preds = %7
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
