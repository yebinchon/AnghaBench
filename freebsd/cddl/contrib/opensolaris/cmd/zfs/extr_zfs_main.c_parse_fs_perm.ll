; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_parse_fs_perm.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_parse_fs_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.passwd = type { i8* }
%struct.group = type { i8* }

@B_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"unhandled zfs_deleg_who_type_t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*)* @parse_fs_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fs_perm(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.passwd*, align 8
  %22 = alloca %struct.group*, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %7, align 8
  br label %27

27:                                               ; preds = %149, %2
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32* @nvlist_next_nvpair(i32* %28, i32* %29)
  store i32* %30, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %154

32:                                               ; preds = %27
  store i32* null, i32** %8, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i8* @nvpair_name(i32* %33)
  store i8* %34, i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %13, align 1
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 3
  store i8* %43, i8** %14, align 8
  %44 = load i64, i64* @B_TRUE, align 8
  store i64 %44, i64* %15, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %16, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 36, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @nvpair_value_nvlist(i32* %52, i32** %8)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %155

56:                                               ; preds = %32
  %57 = load i32, i32* %12, align 4
  switch i32 %57, label %72 [
    i32 137, label %58
    i32 136, label %58
    i32 131, label %58
    i32 130, label %58
    i32 129, label %65
    i32 128, label %65
    i32 133, label %65
    i32 132, label %65
    i32 135, label %65
    i32 134, label %65
  ]

58:                                               ; preds = %56, %56, %56, %56
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %11, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %10, align 8
  br label %74

65:                                               ; preds = %56, %56, %56, %56, %56, %56
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %11, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %10, align 8
  br label %74

72:                                               ; preds = %56
  %73 = call i32 @assert(i32 0)
  br label %74

74:                                               ; preds = %72, %65, %58
  %75 = load i64, i64* %15, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %149

77:                                               ; preds = %74
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %17, align 8
  %78 = call %struct.TYPE_15__* @safe_malloc(i32 8)
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %18, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %16, align 8
  store i32 0, i32* %19, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @uu_avl_node_init(%struct.TYPE_15__* %81, i32* %83, i32* %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i8*, i8** %14, align 8
  %90 = call i32 @who_perm_init(%struct.TYPE_14__* %86, %struct.TYPE_16__* %87, i32 %88, i8* %89)
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %93 = call %struct.TYPE_15__* @uu_avl_find(i32* %91, %struct.TYPE_15__* %92, i32* null, i32* %19)
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %17, align 8
  %94 = icmp eq %struct.TYPE_15__* %93, null
  br i1 %94, label %95, label %144

95:                                               ; preds = %77
  %96 = load i32*, i32** %10, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %96, %99
  br i1 %100, label %101, label %139

101:                                              ; preds = %95
  store i32 0, i32* %20, align 4
  store %struct.passwd* null, %struct.passwd** %21, align 8
  store %struct.group* null, %struct.group** %22, align 8
  store i8* null, i8** %23, align 8
  %102 = load i32, i32* %12, align 4
  switch i32 %102, label %127 [
    i32 128, label %103
    i32 129, label %103
    i32 132, label %115
    i32 133, label %115
  ]

103:                                              ; preds = %101, %101
  %104 = load i8*, i8** %14, align 8
  %105 = call i32 @atoi(i8* %104)
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %20, align 4
  %107 = call %struct.passwd* @getpwuid(i32 %106)
  store %struct.passwd* %107, %struct.passwd** %21, align 8
  %108 = load %struct.passwd*, %struct.passwd** %21, align 8
  %109 = icmp ne %struct.passwd* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load %struct.passwd*, %struct.passwd** %21, align 8
  %112 = getelementptr inbounds %struct.passwd, %struct.passwd* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %23, align 8
  br label %114

114:                                              ; preds = %110, %103
  br label %128

115:                                              ; preds = %101, %101
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @atoi(i8* %116)
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %20, align 4
  %119 = call %struct.group* @getgrgid(i32 %118)
  store %struct.group* %119, %struct.group** %22, align 8
  %120 = load %struct.group*, %struct.group** %22, align 8
  %121 = icmp ne %struct.group* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load %struct.group*, %struct.group** %22, align 8
  %124 = getelementptr inbounds %struct.group, %struct.group* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %23, align 8
  br label %126

126:                                              ; preds = %122, %115
  br label %128

127:                                              ; preds = %101
  br label %128

128:                                              ; preds = %127, %126, %114
  %129 = load i8*, i8** %23, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** %23, align 8
  %137 = call i32 @strlcpy(i32 %135, i8* %136, i32 256)
  br label %138

138:                                              ; preds = %131, %128
  br label %139

139:                                              ; preds = %138, %95
  %140 = load i32*, i32** %10, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %142 = load i32, i32* %19, align 4
  %143 = call i32 @uu_avl_insert(i32* %140, %struct.TYPE_15__* %141, i32 %142)
  br label %148

144:                                              ; preds = %77
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %18, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %16, align 8
  br label %148

148:                                              ; preds = %144, %139
  br label %149

149:                                              ; preds = %148, %74
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %151 = load i32*, i32** %8, align 8
  %152 = load i8, i8* %13, align 1
  %153 = call i32 @parse_who_perm(%struct.TYPE_14__* %150, i32* %151, i8 signext %152)
  br label %27

154:                                              ; preds = %27
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %55
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local %struct.TYPE_15__* @safe_malloc(i32) #1

declare dso_local i32 @uu_avl_node_init(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @who_perm_init(%struct.TYPE_14__*, %struct.TYPE_16__*, i32, i8*) #1

declare dso_local %struct.TYPE_15__* @uu_avl_find(i32*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @uu_avl_insert(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @parse_who_perm(%struct.TYPE_14__*, i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
