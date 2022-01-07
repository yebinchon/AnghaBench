; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_stub_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_stub_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_10__ = type { i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s+%x\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%x:%x+%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_9__*, %struct.elf_link_hash_entry*, %struct.TYPE_10__*)* @spu_stub_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @spu_stub_name(%struct.TYPE_9__* %0, %struct.elf_link_hash_entry* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.elf_link_hash_entry*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %10 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %11 = icmp ne %struct.elf_link_hash_entry* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %3
  %13 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %14 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = add nsw i32 %18, 1
  %20 = add nsw i32 %19, 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @bfd_malloc(i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = load i8*, i8** %8, align 8
  store i8* %27, i8** %4, align 8
  br label %100

28:                                               ; preds = %12
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %31 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, 8
  store i32 %41, i32* %9, align 4
  br label %66

42:                                               ; preds = %3
  store i32 27, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i8* @bfd_malloc(i32 %43)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  store i8* %48, i8** %4, align 8
  br label %100

49:                                               ; preds = %42
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @ELF32_R_SYM(i32 %56)
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %58, i32 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @strlen(i8* %64)
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %49, %28
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 43
  br i1 %74, label %75, label %98

75:                                               ; preds = %66
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 48
  br i1 %83, label %84, label %98

84:                                               ; preds = %75
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 0, i8* %97, align 1
  br label %98

98:                                               ; preds = %92, %84, %75, %66
  %99 = load i8*, i8** %8, align 8
  store i8* %99, i8** %4, align 8
  br label %100

100:                                              ; preds = %98, %47, %26
  %101 = load i8*, i8** %4, align 8
  ret i8* %101
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @ELF32_R_SYM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
