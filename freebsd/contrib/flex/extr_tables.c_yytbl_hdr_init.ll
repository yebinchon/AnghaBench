; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_tables.c_yytbl_hdr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_tables.c_yytbl_hdr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yytbl_hdr = type { i8*, i8*, i64, i64, i64, i32 }

@YYTBL_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yytbl_hdr_init(%struct.yytbl_hdr* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.yytbl_hdr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.yytbl_hdr* %0, %struct.yytbl_hdr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %8 = call i32 @memset(%struct.yytbl_hdr* %7, i32 0, i32 48)
  %9 = load i32, i32* @YYTBL_MAGIC, align 4
  %10 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %11 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = add nsw i64 14, %13
  %15 = add nsw i64 %14, 1
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add nsw i64 %15, %17
  %19 = add nsw i64 %18, 1
  %20 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %21 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %20, i32 0, i32 4
  store i64 %19, i64* %21, align 8
  %22 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %23 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @yypad64(i64 %24)
  %26 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %31 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %33 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @copy_string(i8* %34)
  %36 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %37 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @copy_string(i8* %38)
  %40 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %41 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.yytbl_hdr*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @yypad64(i64) #1

declare dso_local i8* @copy_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
