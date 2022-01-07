; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_print_one_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_print_one_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64 }

@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@SECTION_NAME_MAP_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%V   \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"             %T\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_hash_entry*, i8*)* @print_one_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_one_symbol(%struct.bfd_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.bfd_link_hash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.bfd_link_hash_entry* %0, %struct.bfd_link_hash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %10 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @bfd_link_hash_defined, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %16 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @bfd_link_hash_defweak, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %14, %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %23 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = icmp eq %struct.TYPE_10__* %21, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %35, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SECTION_NAME_MAP_LENGTH, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = call i32 (...) @print_space()
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %29

38:                                               ; preds = %29
  %39 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %40 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %45 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %43, %50
  %52 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %53 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %51, %60
  %62 = call i32 @minfo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %3, align 8
  %64 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @minfo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %38, %20, %14
  %69 = load i32, i32* @TRUE, align 4
  ret i32 %69
}

declare dso_local i32 @print_space(...) #1

declare dso_local i32 @minfo(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
