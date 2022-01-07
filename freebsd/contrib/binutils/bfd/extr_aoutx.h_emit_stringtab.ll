; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_emit_stringtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_emit_stringtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_strtab_hash = type { i32 }

@BYTES_IN_WORD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_strtab_hash*)* @emit_stringtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emit_stringtab(i32* %0, %struct.bfd_strtab_hash* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_strtab_hash*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bfd_strtab_hash* %1, %struct.bfd_strtab_hash** %5, align 8
  %10 = load i32, i32* @BYTES_IN_WORD, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @BYTES_IN_WORD, align 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %5, align 8
  %18 = call i32 @_bfd_stringtab_size(%struct.bfd_strtab_hash* %17)
  %19 = load i32, i32* @BYTES_IN_WORD, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @PUT_WORD(i32* %16, i32 %20, i32* %13)
  %22 = bitcast i32* %13 to i8*
  %23 = load i64, i64* %8, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @bfd_bwrite(i8* %22, i64 %23, i32* %24)
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %34

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %5, align 8
  %33 = call i32 @_bfd_stringtab_emit(i32* %31, %struct.bfd_strtab_hash* %32)
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %30, %28
  %35 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PUT_WORD(i32*, i32, i32*) #2

declare dso_local i32 @_bfd_stringtab_size(%struct.bfd_strtab_hash*) #2

declare dso_local i64 @bfd_bwrite(i8*, i64, i32*) #2

declare dso_local i32 @_bfd_stringtab_emit(i32*, %struct.bfd_strtab_hash*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
