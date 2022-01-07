; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_kxgettext.c_message__add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_kxgettext.c_message__add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { %struct.message* }

@message__list = common dso_local global %struct.message* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32)* @message__add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message__add(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16384 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca %struct.message*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds [16384 x i8], [16384 x i8]* %10, i64 0, i64 0
  %15 = call i8* @escape(i8* %13, i8* %14, i32 16384)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = call %struct.message* @mesage__find(i8* %16)
  store %struct.message* %17, %struct.message** %12, align 8
  %18 = load %struct.message*, %struct.message** %12, align 8
  %19 = icmp ne %struct.message* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.message*, %struct.message** %12, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @message__add_file_line(%struct.message* %21, i8* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  br label %40

25:                                               ; preds = %4
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.message* @message__new(i8* %26, i8* %27, i8* %28, i32 %29)
  store %struct.message* %30, %struct.message** %12, align 8
  %31 = load %struct.message*, %struct.message** %12, align 8
  %32 = icmp ne %struct.message* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.message*, %struct.message** @message__list, align 8
  %35 = load %struct.message*, %struct.message** %12, align 8
  %36 = getelementptr inbounds %struct.message, %struct.message* %35, i32 0, i32 0
  store %struct.message* %34, %struct.message** %36, align 8
  %37 = load %struct.message*, %struct.message** %12, align 8
  store %struct.message* %37, %struct.message** @message__list, align 8
  br label %39

38:                                               ; preds = %25
  store i32 -1, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %33
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i8* @escape(i8*, i8*, i32) #1

declare dso_local %struct.message* @mesage__find(i8*) #1

declare dso_local i32 @message__add_file_line(%struct.message*, i8*, i32) #1

declare dso_local %struct.message* @message__new(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
