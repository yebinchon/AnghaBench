; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_form_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_form_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itbl_entry = type { %struct.itbl_field* }
%struct.itbl_field = type { i32, %struct.itbl_field* }

@form_args.s = internal global [31 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.itbl_entry*)* @form_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @form_args(%struct.itbl_entry* %0) #0 {
  %2 = alloca %struct.itbl_entry*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct.itbl_field*, align 8
  store %struct.itbl_entry* %0, %struct.itbl_entry** %2, align 8
  store i8 0, i8* %3, align 1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @form_args.s, i64 0, i64 0), i8** %4, align 8
  %6 = load %struct.itbl_entry*, %struct.itbl_entry** %2, align 8
  %7 = call i32 @ASSERT(%struct.itbl_entry* %6)
  %8 = load %struct.itbl_entry*, %struct.itbl_entry** %2, align 8
  %9 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %8, i32 0, i32 0
  %10 = load %struct.itbl_field*, %struct.itbl_field** %9, align 8
  store %struct.itbl_field* %10, %struct.itbl_field** %5, align 8
  br label %11

11:                                               ; preds = %38, %1
  %12 = load %struct.itbl_field*, %struct.itbl_field** %5, align 8
  %13 = icmp ne %struct.itbl_field* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  %15 = load %struct.itbl_field*, %struct.itbl_field** %5, align 8
  %16 = getelementptr inbounds %struct.itbl_field, %struct.itbl_field* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %23 [
    i32 130, label %18
    i32 131, label %19
    i32 129, label %20
    i32 128, label %21
    i32 132, label %22
  ]

18:                                               ; preds = %14
  store i8 100, i8* %3, align 1
  br label %24

19:                                               ; preds = %14
  store i8 116, i8* %3, align 1
  br label %24

20:                                               ; preds = %14
  store i8 115, i8* %3, align 1
  br label %24

21:                                               ; preds = %14
  store i8 105, i8* %3, align 1
  br label %24

22:                                               ; preds = %14
  store i8 97, i8* %3, align 1
  br label %24

23:                                               ; preds = %14
  store i8 0, i8* %3, align 1
  br label %24

24:                                               ; preds = %23, %22, %21, %20, %19, %18
  %25 = load i8, i8* %3, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, getelementptr inbounds ([31 x i8], [31 x i8]* @form_args.s, i64 0, i64 0)
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  store i8 44, i8* %31, align 1
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8, i8* %3, align 1
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %4, align 8
  store i8 %34, i8* %35, align 1
  br label %37

37:                                               ; preds = %33, %24
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.itbl_field*, %struct.itbl_field** %5, align 8
  %40 = getelementptr inbounds %struct.itbl_field, %struct.itbl_field* %39, i32 0, i32 1
  %41 = load %struct.itbl_field*, %struct.itbl_field** %40, align 8
  store %struct.itbl_field* %41, %struct.itbl_field** %5, align 8
  br label %11

42:                                               ; preds = %11
  %43 = load i8*, i8** %4, align 8
  store i8 0, i8* %43, align 1
  ret i8* getelementptr inbounds ([31 x i8], [31 x i8]* @form_args.s, i64 0, i64 0)
}

declare dso_local i32 @ASSERT(%struct.itbl_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
