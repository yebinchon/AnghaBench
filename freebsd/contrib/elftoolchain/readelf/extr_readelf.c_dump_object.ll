; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32, i8*, i32* }

@DISPLAY_FILENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"\0AFile: %s\0A\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"elf_begin() failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Not an ELF file.\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Internal: libelf returned unknown elf kind.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i32)* @dump_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_object(%struct.readelf* %0, i32 %1) #0 {
  %3 = alloca %struct.readelf*, align 8
  %4 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.readelf*, %struct.readelf** %3, align 8
  %6 = getelementptr inbounds %struct.readelf, %struct.readelf* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @DISPLAY_FILENAME, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.readelf*, %struct.readelf** %3, align 8
  %13 = getelementptr inbounds %struct.readelf, %struct.readelf* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ELF_C_READ, align 4
  %19 = call i32* @elf_begin(i32 %17, i32 %18, i32* null)
  %20 = load %struct.readelf*, %struct.readelf** %3, align 8
  %21 = getelementptr inbounds %struct.readelf, %struct.readelf* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = icmp eq i32* %19, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 @elf_errmsg(i32 -1)
  %25 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %47

26:                                               ; preds = %16
  %27 = load %struct.readelf*, %struct.readelf** %3, align 8
  %28 = getelementptr inbounds %struct.readelf, %struct.readelf* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @elf_kind(i32* %29)
  switch i32 %30, label %40 [
    i32 128, label %31
    i32 129, label %33
    i32 130, label %36
  ]

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %47

33:                                               ; preds = %26
  %34 = load %struct.readelf*, %struct.readelf** %3, align 8
  %35 = call i32 @dump_elf(%struct.readelf* %34)
  br label %42

36:                                               ; preds = %26
  %37 = load %struct.readelf*, %struct.readelf** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dump_ar(%struct.readelf* %37, i32 %38)
  br label %42

40:                                               ; preds = %26
  %41 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %47

42:                                               ; preds = %36, %33
  %43 = load %struct.readelf*, %struct.readelf** %3, align 8
  %44 = getelementptr inbounds %struct.readelf, %struct.readelf* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @elf_end(i32* %45)
  br label %47

47:                                               ; preds = %42, %40, %31, %23
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @elf_kind(i32*) #1

declare dso_local i32 @dump_elf(%struct.readelf*) #1

declare dso_local i32 @dump_ar(%struct.readelf*, i32) #1

declare dso_local i32 @elf_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
