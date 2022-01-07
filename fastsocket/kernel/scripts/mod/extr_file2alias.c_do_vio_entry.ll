; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_vio_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_vio_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_device_id = type { i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"vio:T%sS%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.vio_device_id*, i8*)* @do_vio_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_vio_entry(i8* %0, %struct.vio_device_id* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vio_device_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.vio_device_id* %1, %struct.vio_device_id** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.vio_device_id*, %struct.vio_device_id** %5, align 8
  %10 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.vio_device_id*, %struct.vio_device_id** %5, align 8
  %18 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i8* [ %19, %16 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %20 ]
  %23 = load %struct.vio_device_id*, %struct.vio_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.vio_device_id*, %struct.vio_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %34 ]
  %37 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %36)
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %7, align 8
  br label %39

39:                                               ; preds = %57, %35
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ]
  br i1 %48, label %49, label %60

49:                                               ; preds = %47
  %50 = load i8*, i8** %7, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isspace(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i8*, i8** %7, align 8
  store i8 95, i8* %55, align 1
  br label %56

56:                                               ; preds = %54, %49
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  br label %39

60:                                               ; preds = %47
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @add_wildcard(i8* %61)
  ret i32 1
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @add_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
