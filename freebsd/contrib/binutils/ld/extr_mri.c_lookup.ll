; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_mri.c_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_mri.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_name_struct = type { %struct.section_name_struct*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.section_name_struct** (i8*, %struct.section_name_struct**)* @lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.section_name_struct** @lookup(i8* %0, %struct.section_name_struct** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.section_name_struct**, align 8
  %5 = alloca %struct.section_name_struct**, align 8
  store i8* %0, i8** %3, align 8
  store %struct.section_name_struct** %1, %struct.section_name_struct*** %4, align 8
  %6 = load %struct.section_name_struct**, %struct.section_name_struct*** %4, align 8
  store %struct.section_name_struct** %6, %struct.section_name_struct*** %5, align 8
  br label %7

7:                                                ; preds = %29, %2
  %8 = load %struct.section_name_struct**, %struct.section_name_struct*** %5, align 8
  %9 = load %struct.section_name_struct*, %struct.section_name_struct** %8, align 8
  %10 = icmp ne %struct.section_name_struct* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.section_name_struct**, %struct.section_name_struct*** %5, align 8
  %14 = load %struct.section_name_struct*, %struct.section_name_struct** %13, align 8
  %15 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @strcmp(i8* %12, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.section_name_struct**, %struct.section_name_struct*** %5, align 8
  %21 = load %struct.section_name_struct*, %struct.section_name_struct** %20, align 8
  %22 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %21, i32 0, i32 0
  %23 = load %struct.section_name_struct*, %struct.section_name_struct** %22, align 8
  %24 = load %struct.section_name_struct**, %struct.section_name_struct*** %5, align 8
  store %struct.section_name_struct* %23, %struct.section_name_struct** %24, align 8
  br label %29

25:                                               ; preds = %11
  %26 = load %struct.section_name_struct**, %struct.section_name_struct*** %5, align 8
  %27 = load %struct.section_name_struct*, %struct.section_name_struct** %26, align 8
  %28 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %27, i32 0, i32 0
  store %struct.section_name_struct** %28, %struct.section_name_struct*** %5, align 8
  br label %29

29:                                               ; preds = %25, %19
  br label %7

30:                                               ; preds = %7
  %31 = call %struct.section_name_struct* @xmalloc(i32 16)
  %32 = load %struct.section_name_struct**, %struct.section_name_struct*** %5, align 8
  store %struct.section_name_struct* %31, %struct.section_name_struct** %32, align 8
  %33 = load %struct.section_name_struct**, %struct.section_name_struct*** %5, align 8
  ret %struct.section_name_struct** %33
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.section_name_struct* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
