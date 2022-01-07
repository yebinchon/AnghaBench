; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_GCDAProfiling.c_map_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_GCDAProfiling.c_map_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_file = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@file_size = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_FILE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@write_buffer = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"profiling: %s: cannot map: %s\0A\00", align 1
@filename = common dso_local global i8* null, align 8
@FILE_MAP_WRITE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@PAGE_READWRITE = common dso_local global i32 0, align 4
@mmap_handle = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @map_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @output_file, align 4
  %4 = load i32, i32* @SEEK_END, align 4
  %5 = call i32 @fseek(i32 %3, i64 0, i32 %4)
  %6 = load i32, i32* @output_file, align 4
  %7 = call i64 @ftell(i32 %6)
  store i64 %7, i64* @file_size, align 8
  %8 = load i64, i64* @file_size, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %31

11:                                               ; preds = %0
  %12 = load i64, i64* @file_size, align 8
  %13 = load i32, i32* @PROT_READ, align 4
  %14 = load i32, i32* @PROT_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MAP_FILE, align 4
  %17 = load i32, i32* @MAP_SHARED, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @fd, align 4
  %20 = call i8* @mmap(i32 0, i64 %12, i32 %15, i32 %18, i32 %19, i32 0)
  store i8* %20, i8** @write_buffer, align 8
  %21 = load i8*, i8** @write_buffer, align 8
  %22 = icmp eq i8* %21, inttoptr (i64 -1 to i8*)
  br i1 %22, label %23, label %30

23:                                               ; preds = %11
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** @filename, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i8* @strerror(i32 %27)
  %29 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %28)
  store i32 -1, i32* %1, align 4
  br label %31

30:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %30, %23, %10
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @fseek(i32, i64, i32) #1

declare dso_local i64 @ftell(i32) #1

declare dso_local i8* @mmap(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
