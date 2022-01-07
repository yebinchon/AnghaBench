; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_fixdep.c_do_config_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_fixdep.c_do_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fixdep: \00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"fixdep: mmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_config_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_config_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = call i32 @open(i8* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @perror(i8* %14)
  %16 = call i32 @exit(i32 2) #3
  unreachable

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @fstat(i32 %18, %struct.stat* %3)
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @close(i32 %24)
  br label %51

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @PROT_READ, align 4
  %30 = load i32, i32* @MAP_PRIVATE, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i8* @mmap(i32* null, i64 %28, i32 %29, i32 %30, i32 %31, i32 0)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @close(i32 %38)
  br label %51

40:                                               ; preds = %26
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @parse_config_file(i8* %41, i64 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @munmap(i8* %45, i64 %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @close(i32 %49)
  br label %51

51:                                               ; preds = %40, %36, %23
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @parse_config_file(i8*, i64) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
