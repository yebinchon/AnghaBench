; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_syms.c_coff_section_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_syms.c_coff_section_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_to_type = type { i8, i64 }

@stt = common dso_local global %struct.section_to_type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*)* @coff_section_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @coff_section_type(i8* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca %struct.section_to_type*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.section_to_type*, %struct.section_to_type** @stt, align 8
  %6 = getelementptr inbounds %struct.section_to_type, %struct.section_to_type* %5, i64 0
  store %struct.section_to_type* %6, %struct.section_to_type** %4, align 8
  br label %7

7:                                                ; preds = %28, %1
  %8 = load %struct.section_to_type*, %struct.section_to_type** %4, align 8
  %9 = getelementptr inbounds %struct.section_to_type, %struct.section_to_type* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.section_to_type*, %struct.section_to_type** %4, align 8
  %15 = getelementptr inbounds %struct.section_to_type, %struct.section_to_type* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.section_to_type*, %struct.section_to_type** %4, align 8
  %18 = getelementptr inbounds %struct.section_to_type, %struct.section_to_type* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @strlen(i64 %19)
  %21 = call i32 @strncmp(i8* %13, i64 %16, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  %24 = load %struct.section_to_type*, %struct.section_to_type** %4, align 8
  %25 = getelementptr inbounds %struct.section_to_type, %struct.section_to_type* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 8
  store i8 %26, i8* %2, align 1
  br label %32

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.section_to_type*, %struct.section_to_type** %4, align 8
  %30 = getelementptr inbounds %struct.section_to_type, %struct.section_to_type* %29, i32 1
  store %struct.section_to_type* %30, %struct.section_to_type** %4, align 8
  br label %7

31:                                               ; preds = %7
  store i8 63, i8* %2, align 1
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i8, i8* %2, align 1
  ret i8 %33
}

declare dso_local i32 @strncmp(i8*, i64, i32) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
