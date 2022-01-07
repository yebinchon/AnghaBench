; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_kxgettext.c_message__new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_kxgettext.c_message__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i8*, %struct.message*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.message* (i8*, i8*, i8*, i32)* @message__new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.message* @message__new(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.message*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call %struct.message* @malloc(i32 32)
  store %struct.message* %10, %struct.message** %9, align 8
  %11 = load %struct.message*, %struct.message** %9, align 8
  %12 = icmp eq %struct.message* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %41

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.message* @file_line__new(i8* %15, i32 %16)
  %18 = load %struct.message*, %struct.message** %9, align 8
  %19 = getelementptr inbounds %struct.message, %struct.message* %18, i32 0, i32 1
  store %struct.message* %17, %struct.message** %19, align 8
  %20 = load %struct.message*, %struct.message** %9, align 8
  %21 = getelementptr inbounds %struct.message, %struct.message* %20, i32 0, i32 1
  %22 = load %struct.message*, %struct.message** %21, align 8
  %23 = icmp eq %struct.message* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %48

25:                                               ; preds = %14
  %26 = load i8*, i8** %5, align 8
  %27 = call i32* @strdup(i8* %26)
  %28 = load %struct.message*, %struct.message** %9, align 8
  %29 = getelementptr inbounds %struct.message, %struct.message* %28, i32 0, i32 3
  store i32* %27, i32** %29, align 8
  %30 = load %struct.message*, %struct.message** %9, align 8
  %31 = getelementptr inbounds %struct.message, %struct.message* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %43

35:                                               ; preds = %25
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.message*, %struct.message** %9, align 8
  %38 = getelementptr inbounds %struct.message, %struct.message* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.message*, %struct.message** %9, align 8
  %40 = getelementptr inbounds %struct.message, %struct.message* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %48, %35, %13
  %42 = load %struct.message*, %struct.message** %9, align 8
  ret %struct.message* %42

43:                                               ; preds = %34
  %44 = load %struct.message*, %struct.message** %9, align 8
  %45 = getelementptr inbounds %struct.message, %struct.message* %44, i32 0, i32 1
  %46 = load %struct.message*, %struct.message** %45, align 8
  %47 = call i32 @free(%struct.message* %46)
  br label %48

48:                                               ; preds = %43, %24
  %49 = load %struct.message*, %struct.message** %9, align 8
  %50 = call i32 @free(%struct.message* %49)
  store %struct.message* null, %struct.message** %9, align 8
  br label %41
}

declare dso_local %struct.message* @malloc(i32) #1

declare dso_local %struct.message* @file_line__new(i8*, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
