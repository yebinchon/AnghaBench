; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_complete_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_complete_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@last_source_file = common dso_local global i32* null, align 8
@current_source_start_addr = common dso_local global i64 0, align 8
@current_source_end_addr = common dso_local global i64 0, align 8
@current_objfile = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @complete_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_symtab(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** @last_source_file, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32*, i32** @last_source_file, align 8
  %11 = call i32 @xfree(i32* %10)
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i32* @savestring(i8* %13, i32 %15)
  store i32* %16, i32** @last_source_file, align 8
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* @current_source_start_addr, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  store i64 %21, i64* @current_source_end_addr, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_objfile, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @current_source_start_addr, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %12
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_objfile, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @current_source_end_addr, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load i64, i64* @current_source_start_addr, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_objfile, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i64 %36, i64* %39, align 8
  %40 = load i64, i64* @current_source_end_addr, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_objfile, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i64 %40, i64* %43, align 8
  br label %44

44:                                               ; preds = %35, %28, %12
  ret void
}

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32* @savestring(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
