; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_kcore.c_storenote.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_kcore.c_storenote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memelfnote = type { i32, %struct.elf_note*, %struct.elf_note*, i32 }
%struct.elf_note = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.memelfnote*, i8*)* @storenote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @storenote(%struct.memelfnote* %0, i8* %1) #0 {
  %3 = alloca %struct.memelfnote*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.elf_note, align 4
  store %struct.memelfnote* %0, %struct.memelfnote** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.memelfnote*, %struct.memelfnote** %3, align 8
  %7 = getelementptr inbounds %struct.memelfnote, %struct.memelfnote* %6, i32 0, i32 2
  %8 = load %struct.elf_note*, %struct.elf_note** %7, align 8
  %9 = call i32 @strlen(%struct.elf_note* %8)
  %10 = add nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.elf_note, %struct.elf_note* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.memelfnote*, %struct.memelfnote** %3, align 8
  %13 = getelementptr inbounds %struct.memelfnote, %struct.memelfnote* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.elf_note, %struct.elf_note* %5, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load %struct.memelfnote*, %struct.memelfnote** %3, align 8
  %17 = getelementptr inbounds %struct.memelfnote, %struct.memelfnote* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.elf_note, %struct.elf_note* %5, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast %struct.elf_note* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 4 %22, i64 12, i1 false)
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 12
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.memelfnote*, %struct.memelfnote** %3, align 8
  %29 = getelementptr inbounds %struct.memelfnote, %struct.memelfnote* %28, i32 0, i32 2
  %30 = load %struct.elf_note*, %struct.elf_note** %29, align 8
  %31 = bitcast %struct.elf_note* %30 to i8*
  %32 = getelementptr inbounds %struct.elf_note, %struct.elf_note* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 4 %31, i64 %34, i1 false)
  %35 = getelementptr inbounds %struct.elf_note, %struct.elf_note* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %26
  %41 = load i8*, i8** %4, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = call i64 @roundup(i64 %42, i32 4)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.memelfnote*, %struct.memelfnote** %3, align 8
  %48 = getelementptr inbounds %struct.memelfnote, %struct.memelfnote* %47, i32 0, i32 1
  %49 = load %struct.elf_note*, %struct.elf_note** %48, align 8
  %50 = bitcast %struct.elf_note* %49 to i8*
  %51 = load %struct.memelfnote*, %struct.memelfnote** %3, align 8
  %52 = getelementptr inbounds %struct.memelfnote, %struct.memelfnote* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 4 %50, i64 %54, i1 false)
  %55 = load %struct.memelfnote*, %struct.memelfnote** %3, align 8
  %56 = getelementptr inbounds %struct.memelfnote, %struct.memelfnote* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %4, align 8
  br label %61

61:                                               ; preds = %45
  %62 = load i8*, i8** %4, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = call i64 @roundup(i64 %63, i32 4)
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %4, align 8
  %66 = load i8*, i8** %4, align 8
  ret i8* %66
}

declare dso_local i32 @strlen(%struct.elf_note*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @roundup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
