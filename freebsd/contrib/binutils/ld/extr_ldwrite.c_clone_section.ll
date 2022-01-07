; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldwrite.c_clone_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldwrite.c_clone_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i64, %struct.TYPE_10__*, i32, i64, i32, i32, i32, i32 }
%struct.bfd_link_hash_entry = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i64 }

@.str = private unnamed_addr constant [6 x i8] c".stab\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"$GDB_SYMBOLS$\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"%F%P: cannot create split section name for %s\0A\00", align 1
@link_info = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%F%P: clone section failed: %E\0A\00", align 1
@bfd_link_hash_defined = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, %struct.TYPE_10__*, i8*, i32*)* @clone_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @clone_section(i32* %0, %struct.TYPE_10__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.bfd_link_hash_entry*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = add i32 %17, 1
  %19 = call i8* @xmalloc(i32 %18)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %12, align 4
  %23 = add i32 %22, 1
  %24 = call i32 @memcpy(i8* %20, i8* %21, i32 %23)
  br label %25

25:                                               ; preds = %39, %4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sub i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @ISDIGIT(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %28, %25
  %38 = phi i1 [ false, %25 ], [ %36, %28 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i32, i32* %12, align 4
  %41 = add i32 %40, -1
  store i32 %41, i32* %12, align 4
  br label %25

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = icmp ugt i32 %43, 1
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sub i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 46
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sub i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %54, %45, %42
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @bfd_family_coff(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = icmp sgt i32 %66, 5
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = call i64 @CONST_STRNEQ(i8* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %8, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72, %68
  %77 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 (i32, ...) @einfo(i32 %77, i8* %78)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %160

80:                                               ; preds = %72
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 5
  store i8 0, i8* %82, align 1
  br label %83

83:                                               ; preds = %80, %64, %60
  %84 = load i32*, i32** %6, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = call i8* @bfd_get_unique_section_name(i32* %84, i8* %85, i32* %86)
  store i8* %87, i8** %11, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %102, label %89

89:                                               ; preds = %83
  %90 = load i32*, i32** %6, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = call %struct.TYPE_10__* @bfd_make_section_anyway(i32* %90, i8* %91)
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %13, align 8
  %93 = icmp eq %struct.TYPE_10__* %92, null
  br i1 %93, label %102, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @link_info, i32 0, i32 0), align 4
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* @TRUE, align 4
  %98 = load i32, i32* @TRUE, align 4
  %99 = load i32, i32* @FALSE, align 4
  %100 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %95, i8* %96, i32 %97, i32 %98, i32 %99)
  store %struct.bfd_link_hash_entry* %100, %struct.bfd_link_hash_entry** %14, align 8
  %101 = icmp eq %struct.bfd_link_hash_entry* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %94, %89, %83
  %103 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %104 = call i32 (i32, ...) @einfo(i32 %103)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %160

105:                                              ; preds = %94
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i32, i32* @bfd_link_hash_defined, align 4
  %109 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %14, align 8
  %110 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %14, align 8
  %112 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %116 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %14, align 8
  %117 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 9
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 5
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 3
  store %struct.TYPE_10__* %147, %struct.TYPE_10__** %149, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  store i64 0, i64* %151, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  store i64 0, i64* %153, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %159, %struct.TYPE_10__** %5, align 8
  br label %160

160:                                              ; preds = %105, %102, %76
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %161
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i64 @bfd_family_coff(i32*) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @einfo(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @bfd_get_unique_section_name(i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @bfd_make_section_anyway(i32*, i8*) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
