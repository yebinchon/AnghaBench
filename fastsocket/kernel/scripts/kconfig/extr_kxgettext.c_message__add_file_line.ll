; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_kxgettext.c_message__add_file_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_kxgettext.c_message__add_file_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { %struct.file_line* }
%struct.file_line = type { %struct.file_line* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.message*, i8*, i32)* @message__add_file_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message__add_file_line(%struct.message* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.message*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_line*, align 8
  store %struct.message* %0, %struct.message** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.file_line* @file_line__new(i8* %9, i32 %10)
  store %struct.file_line* %11, %struct.file_line** %8, align 8
  %12 = load %struct.file_line*, %struct.file_line** %8, align 8
  %13 = icmp eq %struct.file_line* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %24

15:                                               ; preds = %3
  %16 = load %struct.message*, %struct.message** %4, align 8
  %17 = getelementptr inbounds %struct.message, %struct.message* %16, i32 0, i32 0
  %18 = load %struct.file_line*, %struct.file_line** %17, align 8
  %19 = load %struct.file_line*, %struct.file_line** %8, align 8
  %20 = getelementptr inbounds %struct.file_line, %struct.file_line* %19, i32 0, i32 0
  store %struct.file_line* %18, %struct.file_line** %20, align 8
  %21 = load %struct.file_line*, %struct.file_line** %8, align 8
  %22 = load %struct.message*, %struct.message** %4, align 8
  %23 = getelementptr inbounds %struct.message, %struct.message* %22, i32 0, i32 0
  store %struct.file_line* %21, %struct.file_line** %23, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %15, %14
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local %struct.file_line* @file_line__new(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
