; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldmain.c_constructor_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldmain.c_constructor_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.bfd_link_info = type { i32, i64 }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [41 x i8] c"%P: warning: global constructor %s used\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@output_bfd = common dso_local global i32* null, align 8
@BFD_RELOC_CTOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"%P%F: BFD backend error: BFD_RELOC_CTOR unsupported\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"__CTOR_LIST__\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"__DTOR_LIST__\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%P%F: bfd_link_hash_lookup failed: %E\0A\00", align 1
@bfd_link_hash_new = common dso_local global i64 0, align 8
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bfd_link_info*, i64, i8*, i32*, i32*, i32)* @constructor_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @constructor_callback(%struct.bfd_link_info* %0, i64 %1, i8* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.bfd_link_hash_entry*, align 8
  %16 = alloca [15 x i8], align 1
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 1), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 (i32, ...) @einfo(i32 %20, i8* %21)
  br label %23

23:                                               ; preds = %19, %6
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* @TRUE, align 8
  store i64 %27, i64* %7, align 8
  br label %103

28:                                               ; preds = %23
  %29 = load i32*, i32** @output_bfd, align 8
  %30 = load i32, i32* @BFD_RELOC_CTOR, align 4
  %31 = call i32* @bfd_reloc_type_lookup(i32* %29, i32 %30)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %35 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @BFD_RELOC_CTOR, align 4
  %41 = call i32* @bfd_reloc_type_lookup(i32* %39, i32 %40)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33
  %44 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 (i32, ...) @einfo(i32 %44)
  br label %46

46:                                               ; preds = %43, %38, %28
  %47 = getelementptr inbounds [15 x i8], [15 x i8]* %16, i64 0, i64 0
  store i8* %47, i8** %14, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call signext i8 @bfd_get_symbol_leading_char(i32* %48)
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32*, i32** %11, align 8
  %54 = call signext i8 @bfd_get_symbol_leading_char(i32* %53)
  %55 = load i8*, i8** %14, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %14, align 8
  store i8 %54, i8* %55, align 1
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @strcpy(i8* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @strcpy(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %68 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds [15 x i8], [15 x i8]* %16, i64 0, i64 0
  %71 = load i64, i64* @TRUE, align 8
  %72 = load i64, i64* @TRUE, align 8
  %73 = load i64, i64* @TRUE, align 8
  %74 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %69, i8* %70, i64 %71, i64 %72, i64 %73)
  store %struct.bfd_link_hash_entry* %74, %struct.bfd_link_hash_entry** %15, align 8
  %75 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %15, align 8
  %76 = icmp eq %struct.bfd_link_hash_entry* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i32 (i32, ...) @einfo(i32 %78)
  br label %80

80:                                               ; preds = %77, %66
  %81 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %15, align 8
  %82 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @bfd_link_hash_new, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load i64, i64* @bfd_link_hash_undefined, align 8
  %88 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %15, align 8
  %89 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %15, align 8
  %92 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32* %90, i32** %94, align 8
  br label %95

95:                                               ; preds = %86, %80
  %96 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %15, align 8
  %97 = load i32, i32* @BFD_RELOC_CTOR, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @ldctor_add_set_entry(%struct.bfd_link_hash_entry* %96, i32 %97, i8* %98, i32* %99, i32 %100)
  %102 = load i64, i64* @TRUE, align 8
  store i64 %102, i64* %7, align 8
  br label %103

103:                                              ; preds = %95, %26
  %104 = load i64, i64* %7, align 8
  ret i64 %104
}

declare dso_local i32 @einfo(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @bfd_reloc_type_lookup(i32*, i32) #1

declare dso_local signext i8 @bfd_get_symbol_leading_char(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @ldctor_add_set_entry(%struct.bfd_link_hash_entry*, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
