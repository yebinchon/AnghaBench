; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_validate_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_validate_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_data = type { i64, i32, i8 }

@.str = private unnamed_addr constant [46 x i8] c"Size letters are meaningless in \22%s\22 command.\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Item count other than 1 is meaningless in \22%s\22 command.\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Format letter \22%c\22 is meaningless in \22%s\22 command.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i8*)* @validate_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_format(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.format_data, align 8
  %5 = alloca i8*, align 8
  %6 = bitcast %struct.format_data* %4 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %5, align 8
  %9 = getelementptr inbounds %struct.format_data, %struct.format_data* %4, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %3
  %16 = getelementptr inbounds %struct.format_data, %struct.format_data* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct.format_data, %struct.format_data* %4, i32 0, i32 2
  %24 = load i8, i8* %23, align 4
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 105
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.format_data, %struct.format_data* %4, i32 0, i32 2
  %29 = load i8, i8* %28, align 4
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 115
  br i1 %31, label %32, label %38

32:                                               ; preds = %27, %22
  %33 = getelementptr inbounds %struct.format_data, %struct.format_data* %4, i32 0, i32 2
  %34 = load i8, i8* %33, align 4
  %35 = sext i8 %34 to i32
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @error(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
