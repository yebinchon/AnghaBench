; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc_stub_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc_stub_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.ppc_link_hash_entry = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%08x.%s+%x\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%08x.%x:%x+%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.ppc_link_hash_entry*, %struct.TYPE_13__*)* @ppc_stub_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ppc_stub_name(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.ppc_link_hash_entry* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.ppc_link_hash_entry*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.ppc_link_hash_entry* %2, %struct.ppc_link_hash_entry** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BFD_ASSERT(i32 %19)
  %21 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %22 = icmp ne %struct.ppc_link_hash_entry* %21, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %4
  %24 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %25 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = add nsw i32 9, %30
  %32 = add nsw i32 %31, 1
  %33 = add nsw i32 %32, 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i8* @bfd_malloc(i32 %35)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %5, align 8
  br label %106

41:                                               ; preds = %23
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %47 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %45, i8* %51, i32 %54)
  br label %80

56:                                               ; preds = %4
  store i32 36, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i8* @bfd_malloc(i32 %57)
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i8*, i8** %10, align 8
  store i8* %62, i8** %5, align 8
  br label %106

63:                                               ; preds = %56
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ELF64_R_SYM(i32 %73)
  %75 = trunc i64 %74 to i32
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %63, %41
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 43
  br i1 %88, label %89, label %104

89:                                               ; preds = %80
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 48
  br i1 %97, label %98, label %104

98:                                               ; preds = %89
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 0, i8* %103, align 1
  br label %104

104:                                              ; preds = %98, %89, %80
  %105 = load i8*, i8** %10, align 8
  store i8* %105, i8** %5, align 8
  br label %106

106:                                              ; preds = %104, %61, %39
  %107 = load i8*, i8** %5, align 8
  ret i8* %107
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i64 @ELF64_R_SYM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
