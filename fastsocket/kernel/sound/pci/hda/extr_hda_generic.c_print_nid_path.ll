; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_print_nid_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_print_nid_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nid_path = type { i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c":%02x\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s path: depth=%d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.nid_path*)* @print_nid_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_nid_path(i8* %0, %struct.nid_path* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nid_path*, align 8
  %5 = alloca [40 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  store i8* %0, i8** %3, align 8
  store %struct.nid_path* %1, %struct.nid_path** %4, align 8
  %8 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %8, align 16
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %28, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %12 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %17 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %18 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %27 = call i32 @strlcat(i8* %25, i8* %26, i32 40)
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.nid_path*, %struct.nid_path** %4, align 8
  %34 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %37 = call i32 @snd_printdd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %35, i8* %36)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @snd_printdd(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
