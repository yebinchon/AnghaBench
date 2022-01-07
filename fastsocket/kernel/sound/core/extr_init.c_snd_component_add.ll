; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_init.c_snd_component_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_init.c_snd_component_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_component_add(%struct.snd_card* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %11 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strstr(i8* %12, i8* %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %17
  store i32 1, i32* %3, align 4
  br label %69

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %37 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %44, 8
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = call i32 (...) @snd_BUG()
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %69

50:                                               ; preds = %35
  %51 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %52 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %60 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strcat(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %50
  %64 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %65 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @strcat(i8* %66, i8* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %46, %33
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
