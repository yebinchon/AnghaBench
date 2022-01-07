; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c_strrevcmp_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c_strrevcmp_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_merge_hash_entry = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @strrevcmp_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strrevcmp_align(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sec_merge_hash_entry*, align 8
  %7 = alloca %struct.sec_merge_hash_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.sec_merge_hash_entry**
  %16 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %15, align 8
  store %struct.sec_merge_hash_entry* %16, %struct.sec_merge_hash_entry** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.sec_merge_hash_entry**
  %19 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %18, align 8
  store %struct.sec_merge_hash_entry* %19, %struct.sec_merge_hash_entry** %7, align 8
  %20 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %6, align 8
  %21 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %7, align 8
  %24 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %6, align 8
  %27 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = getelementptr inbounds i8, i8* %33, i64 -1
  store i8* %34, i8** %10, align 8
  %35 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %7, align 8
  %36 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = getelementptr inbounds i8, i8* %42, i64 -1
  store i8* %43, i8** %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = load i32, i32* %8, align 4
  br label %51

49:                                               ; preds = %2
  %50 = load i32, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %6, align 8
  %55 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %53, %57
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %6, align 8
  %61 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = and i32 %59, %63
  %65 = sub i32 %58, %64
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %3, align 4
  br label %101

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %90, %70
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %71
  %75 = load i8*, i8** %10, align 8
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8*, i8** %11, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load i8*, i8** %10, align 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8*, i8** %11, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = sub nsw i32 %85, %88
  store i32 %89, i32* %3, align 4
  br label %101

90:                                               ; preds = %74
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %10, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %94, i8** %11, align 8
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %12, align 4
  br label %71

97:                                               ; preds = %71
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sub i32 %98, %99
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %82, %68
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
