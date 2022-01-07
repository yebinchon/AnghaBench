; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_load_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_load_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@SEC_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Loading section %s, size 0x%lx lma \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32*)* @load_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_section(i32* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [8 x i8], align 1
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SEC_LOAD, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %70

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = call i32 @bfd_section_size(i32* %18, %struct.TYPE_7__* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = call i64 @bfd_section_lma(i32* %21, %struct.TYPE_7__* %22)
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %70

27:                                               ; preds = %17
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = call i32 @bfd_section_name(i32* %36, %struct.TYPE_7__* %37)
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38, i64 %40)
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* @gdb_stdout, align 4
  %44 = call i32 @print_address_numeric(i64 %42, i32 1, i32 %43)
  %45 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @gdb_stdout, align 4
  %47 = call i32 @gdb_flush(i32 %46)
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @write_long(i8* %48, i64 %49)
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 4
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = call i32 @write_long(i8* %51, i64 %53)
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %56 = call i32 @process_read_request(i8* %55, i32 8)
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @xmalloc(i32 %57)
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** %9, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @bfd_get_section_contents(i32* %60, %struct.TYPE_7__* %61, i8* %62, i32 0, i32 %63)
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @process_read_request(i8* %65, i32 %66)
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @xfree(i8* %68)
  br label %70

70:                                               ; preds = %26, %35, %3
  ret void
}

declare dso_local i32 @bfd_section_size(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @bfd_section_lma(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @bfd_section_name(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @print_address_numeric(i64, i32, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @write_long(i8*, i64) #1

declare dso_local i32 @process_read_request(i8*, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @bfd_get_section_contents(i32*, %struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
