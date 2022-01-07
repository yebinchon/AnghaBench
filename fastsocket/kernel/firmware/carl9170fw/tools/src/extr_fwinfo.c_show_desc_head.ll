; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_fwinfo.c_show_desc_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_fwinfo.c_show_desc_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carl9170fw_desc_head = type { i32, i32*, i32, i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c">\09%c%c%c%c Descriptor: size:%d, compatible:%d, version:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carl9170fw_desc_head*)* @show_desc_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_desc_head(%struct.carl9170fw_desc_head* %0) #0 {
  %2 = alloca %struct.carl9170fw_desc_head*, align 8
  store %struct.carl9170fw_desc_head* %0, %struct.carl9170fw_desc_head** %2, align 8
  %3 = load i32, i32* @stdout, align 4
  %4 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %2, align 8
  %5 = getelementptr inbounds %struct.carl9170fw_desc_head, %struct.carl9170fw_desc_head* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @isprint(i32 %8) #3
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %2, align 8
  %13 = getelementptr inbounds %struct.carl9170fw_desc_head, %struct.carl9170fw_desc_head* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %11
  %19 = phi i32 [ %16, %11 ], [ 32, %17 ]
  %20 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %2, align 8
  %21 = getelementptr inbounds %struct.carl9170fw_desc_head, %struct.carl9170fw_desc_head* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @isprint(i32 %24) #3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %2, align 8
  %29 = getelementptr inbounds %struct.carl9170fw_desc_head, %struct.carl9170fw_desc_head* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  br label %34

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33, %27
  %35 = phi i32 [ %32, %27 ], [ 32, %33 ]
  %36 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %2, align 8
  %37 = getelementptr inbounds %struct.carl9170fw_desc_head, %struct.carl9170fw_desc_head* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @isprint(i32 %40) #3
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %2, align 8
  %45 = getelementptr inbounds %struct.carl9170fw_desc_head, %struct.carl9170fw_desc_head* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  br label %50

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %43
  %51 = phi i32 [ %48, %43 ], [ 32, %49 ]
  %52 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %2, align 8
  %53 = getelementptr inbounds %struct.carl9170fw_desc_head, %struct.carl9170fw_desc_head* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @isprint(i32 %56) #3
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %2, align 8
  %61 = getelementptr inbounds %struct.carl9170fw_desc_head, %struct.carl9170fw_desc_head* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  br label %66

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %59
  %67 = phi i32 [ %64, %59 ], [ 32, %65 ]
  %68 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %2, align 8
  %69 = getelementptr inbounds %struct.carl9170fw_desc_head, %struct.carl9170fw_desc_head* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %2, align 8
  %73 = getelementptr inbounds %struct.carl9170fw_desc_head, %struct.carl9170fw_desc_head* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %2, align 8
  %76 = getelementptr inbounds %struct.carl9170fw_desc_head, %struct.carl9170fw_desc_head* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %35, i32 %51, i32 %67, i32 %71, i32 %74, i32 %77)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
