; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_kxgettext.c_message__print_file_lineno.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_kxgettext.c_message__print_file_lineno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i8*, %struct.file_line* }
%struct.file_line = type { i8*, i32, %struct.file_line* }

@.str = private unnamed_addr constant [12 x i8] c"# %s:00000\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"#: %s:%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c", %s:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.message*)* @message__print_file_lineno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @message__print_file_lineno(%struct.message* %0) #0 {
  %2 = alloca %struct.message*, align 8
  %3 = alloca %struct.file_line*, align 8
  store %struct.message* %0, %struct.message** %2, align 8
  %4 = load %struct.message*, %struct.message** %2, align 8
  %5 = getelementptr inbounds %struct.message, %struct.message* %4, i32 0, i32 1
  %6 = load %struct.file_line*, %struct.file_line** %5, align 8
  store %struct.file_line* %6, %struct.file_line** %3, align 8
  %7 = call i32 @putchar(i8 signext 10)
  %8 = load %struct.message*, %struct.message** %2, align 8
  %9 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.message*, %struct.message** %2, align 8
  %14 = getelementptr inbounds %struct.message, %struct.message* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.file_line*, %struct.file_line** %3, align 8
  %19 = getelementptr inbounds %struct.file_line, %struct.file_line* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.file_line*, %struct.file_line** %3, align 8
  %22 = getelementptr inbounds %struct.file_line, %struct.file_line* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %23)
  %25 = load %struct.file_line*, %struct.file_line** %3, align 8
  %26 = getelementptr inbounds %struct.file_line, %struct.file_line* %25, i32 0, i32 2
  %27 = load %struct.file_line*, %struct.file_line** %26, align 8
  store %struct.file_line* %27, %struct.file_line** %3, align 8
  br label %28

28:                                               ; preds = %31, %17
  %29 = load %struct.file_line*, %struct.file_line** %3, align 8
  %30 = icmp ne %struct.file_line* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.file_line*, %struct.file_line** %3, align 8
  %33 = getelementptr inbounds %struct.file_line, %struct.file_line* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.file_line*, %struct.file_line** %3, align 8
  %36 = getelementptr inbounds %struct.file_line, %struct.file_line* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %34, i32 %37)
  %39 = load %struct.file_line*, %struct.file_line** %3, align 8
  %40 = getelementptr inbounds %struct.file_line, %struct.file_line* %39, i32 0, i32 2
  %41 = load %struct.file_line*, %struct.file_line** %40, align 8
  store %struct.file_line* %41, %struct.file_line** %3, align 8
  br label %28

42:                                               ; preds = %28
  %43 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
