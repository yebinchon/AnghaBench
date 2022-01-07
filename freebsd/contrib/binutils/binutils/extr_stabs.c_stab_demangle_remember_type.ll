; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_remember_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_remember_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_demangle_info = type { i32, i32, %struct.stab_demangle_typestring* }
%struct.stab_demangle_typestring = type { i8*, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stab_demangle_info*, i8*, i32)* @stab_demangle_remember_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_demangle_remember_type(%struct.stab_demangle_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.stab_demangle_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.stab_demangle_info* %0, %struct.stab_demangle_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %8 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %11 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %9, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %16 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 10
  store i32 %18, i32* %16, align 4
  %19 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %20 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %19, i32 0, i32 2
  %21 = load %struct.stab_demangle_typestring*, %struct.stab_demangle_typestring** %20, align 8
  %22 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %23 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 16
  %27 = trunc i64 %26 to i32
  %28 = call i64 @xrealloc(%struct.stab_demangle_typestring* %21, i32 %27)
  %29 = inttoptr i64 %28 to %struct.stab_demangle_typestring*
  %30 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %31 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %30, i32 0, i32 2
  store %struct.stab_demangle_typestring* %29, %struct.stab_demangle_typestring** %31, align 8
  br label %32

32:                                               ; preds = %14, %3
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %35 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %34, i32 0, i32 2
  %36 = load %struct.stab_demangle_typestring*, %struct.stab_demangle_typestring** %35, align 8
  %37 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %38 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.stab_demangle_typestring, %struct.stab_demangle_typestring* %36, i64 %40
  %42 = getelementptr inbounds %struct.stab_demangle_typestring, %struct.stab_demangle_typestring* %41, i32 0, i32 0
  store i8* %33, i8** %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %45 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %44, i32 0, i32 2
  %46 = load %struct.stab_demangle_typestring*, %struct.stab_demangle_typestring** %45, align 8
  %47 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %48 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.stab_demangle_typestring, %struct.stab_demangle_typestring* %46, i64 %50
  %52 = getelementptr inbounds %struct.stab_demangle_typestring, %struct.stab_demangle_typestring* %51, i32 0, i32 1
  store i32 %43, i32* %52, align 8
  %53 = load %struct.stab_demangle_info*, %struct.stab_demangle_info** %4, align 8
  %54 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @TRUE, align 4
  ret i32 %57
}

declare dso_local i64 @xrealloc(%struct.stab_demangle_typestring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
