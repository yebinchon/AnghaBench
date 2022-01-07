; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_hwdep.c_mixart_load_elf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_hwdep.c_mixart_load_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixart_mgr = type { i32 }
%struct.firmware = type { i64 }
%struct.snd_mixart_elf32_ehdr = type { i8*, i64, i32, i32 }
%struct.snd_mixart_elf32_phdr = type { i64, i64, i64, i64 }

@__const.mixart_load_elf.elf32_magic_number = private unnamed_addr constant [4 x i8] c"\7FELF", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixart_mgr*, %struct.firmware*)* @mixart_load_elf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixart_load_elf(%struct.mixart_mgr* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mixart_mgr*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca %struct.snd_mixart_elf32_ehdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_mixart_elf32_phdr, align 8
  %10 = alloca i64, align 8
  store %struct.mixart_mgr* %0, %struct.mixart_mgr** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %11 = bitcast [4 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.mixart_load_elf.elf32_magic_number, i32 0, i32 0), i64 4, i1 false)
  %12 = load %struct.firmware*, %struct.firmware** %5, align 8
  %13 = getelementptr inbounds %struct.firmware, %struct.firmware* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.snd_mixart_elf32_ehdr*
  store %struct.snd_mixart_elf32_ehdr* %15, %struct.snd_mixart_elf32_ehdr** %7, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %38, %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = load %struct.snd_mixart_elf32_ehdr*, %struct.snd_mixart_elf32_ehdr** %7, align 8
  %26 = getelementptr inbounds %struct.snd_mixart_elf32_ehdr, %struct.snd_mixart_elf32_ehdr* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %24, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %104

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.snd_mixart_elf32_ehdr*, %struct.snd_mixart_elf32_ehdr** %7, align 8
  %43 = getelementptr inbounds %struct.snd_mixart_elf32_ehdr, %struct.snd_mixart_elf32_ehdr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %103

46:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %99, %46
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.snd_mixart_elf32_ehdr*, %struct.snd_mixart_elf32_ehdr** %7, align 8
  %50 = getelementptr inbounds %struct.snd_mixart_elf32_ehdr, %struct.snd_mixart_elf32_ehdr* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be16_to_cpu(i32 %51)
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %102

54:                                               ; preds = %47
  %55 = load %struct.snd_mixart_elf32_ehdr*, %struct.snd_mixart_elf32_ehdr** %7, align 8
  %56 = getelementptr inbounds %struct.snd_mixart_elf32_ehdr, %struct.snd_mixart_elf32_ehdr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @be32_to_cpu(i64 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.snd_mixart_elf32_ehdr*, %struct.snd_mixart_elf32_ehdr** %7, align 8
  %61 = getelementptr inbounds %struct.snd_mixart_elf32_ehdr, %struct.snd_mixart_elf32_ehdr* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @be16_to_cpu(i32 %62)
  %64 = mul nsw i32 %59, %63
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %58, %65
  store i64 %66, i64* %10, align 8
  %67 = load %struct.firmware*, %struct.firmware** %5, align 8
  %68 = getelementptr inbounds %struct.firmware, %struct.firmware* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @memcpy(%struct.snd_mixart_elf32_phdr* %9, i64 %71, i32 32)
  %73 = getelementptr inbounds %struct.snd_mixart_elf32_phdr, %struct.snd_mixart_elf32_phdr* %9, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %54
  %77 = getelementptr inbounds %struct.snd_mixart_elf32_phdr, %struct.snd_mixart_elf32_phdr* %9, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %82 = getelementptr inbounds %struct.snd_mixart_elf32_phdr, %struct.snd_mixart_elf32_phdr* %9, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @be32_to_cpu(i64 %83)
  %85 = call i32 @MIXART_MEM(%struct.mixart_mgr* %81, i64 %84)
  %86 = load %struct.firmware*, %struct.firmware** %5, align 8
  %87 = getelementptr inbounds %struct.firmware, %struct.firmware* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.snd_mixart_elf32_phdr, %struct.snd_mixart_elf32_phdr* %9, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @be32_to_cpu(i64 %90)
  %92 = add nsw i64 %88, %91
  %93 = getelementptr inbounds %struct.snd_mixart_elf32_phdr, %struct.snd_mixart_elf32_phdr* %9, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @be32_to_cpu(i64 %94)
  %96 = call i32 @memcpy_toio(i32 %85, i64 %92, i64 %95)
  br label %97

97:                                               ; preds = %80, %76
  br label %98

98:                                               ; preds = %97, %54
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %47

102:                                              ; preds = %47
  br label %103

103:                                              ; preds = %102, %41
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %34
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @be16_to_cpu(i32) #2

declare dso_local i64 @be32_to_cpu(i64) #2

declare dso_local i32 @memcpy(%struct.snd_mixart_elf32_phdr*, i64, i32) #2

declare dso_local i32 @memcpy_toio(i32, i64, i64) #2

declare dso_local i32 @MIXART_MEM(%struct.mixart_mgr*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
