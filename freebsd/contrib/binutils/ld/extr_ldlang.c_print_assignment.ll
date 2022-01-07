; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_print_assignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_print_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, i32, i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i8*, i32* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.bfd_link_hash_entry = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SECTION_NAME_MAP_LENGTH = common dso_local global i32 0, align 4
@etree_assert = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@print_dot = common dso_local global i32 0, align 4
@expld = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"0x%V\00", align 1
@link_info = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"[0x%V]\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"[unresolved]\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"*undef*   \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"                \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_25__*)* @print_assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_assignment(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bfd_link_hash_entry*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %19, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SECTION_NAME_MAP_LENGTH, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = call i32 (...) @print_space()
  br label %19

19:                                               ; preds = %17
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %13

22:                                               ; preds = %13
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @etree_assert, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load i64, i64* @FALSE, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %7, align 4
  br label %79

41:                                               ; preds = %22
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 46
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br label %59

59:                                               ; preds = %53, %41
  %60 = phi i1 [ false, %41 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %8, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %59
  %71 = load i8*, i8** %9, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i64 @scan_for_self_assignment(i8* %71, i32* %72)
  %74 = load i64, i64* @FALSE, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %70, %59
  %77 = phi i1 [ true, %59 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76, %31
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @exp_fold_tree(i32* %80, i32 %83, i32* @print_dot)
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @expld, i32 0, i32 0, i32 2), align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %147

87:                                               ; preds = %79
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @expld, i32 0, i32 0, i32 1), align 8
  store i32 %91, i32* %10, align 4
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @expld, i32 0, i32 0, i32 0), align 8
  %93 = icmp ne %struct.TYPE_23__* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @expld, i32 0, i32 0, i32 0), align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %94, %90
  %103 = load i32, i32* %10, align 4
  %104 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* @print_dot, align 4
  br label %109

109:                                              ; preds = %107, %102
  br label %146

110:                                              ; preds = %87
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @link_info, i32 0, i32 0), align 4
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i64, i64* @FALSE, align 8
  %119 = load i64, i64* @FALSE, align 8
  %120 = load i32, i32* @TRUE, align 4
  %121 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %111, i8* %117, i64 %118, i64 %119, i32 %120)
  store %struct.bfd_link_hash_entry* %121, %struct.bfd_link_hash_entry** %11, align 8
  %122 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %11, align 8
  %123 = icmp ne %struct.bfd_link_hash_entry* %122, null
  br i1 %123, label %124, label %143

124:                                              ; preds = %110
  %125 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %11, align 8
  %126 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %10, align 4
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @expld, i32 0, i32 0, i32 0), align 8
  %131 = icmp ne %struct.TYPE_23__* %130, null
  br i1 %131, label %132, label %140

132:                                              ; preds = %124
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @expld, i32 0, i32 0, i32 0), align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %132, %124
  %141 = load i32, i32* %10, align 4
  %142 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  br label %145

143:                                              ; preds = %110
  %144 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %140
  br label %146

146:                                              ; preds = %145, %109
  br label %149

147:                                              ; preds = %79
  %148 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %146
  %150 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = call i32 @exp_print_tree(%struct.TYPE_17__* %153)
  %155 = call i32 (...) @print_nl()
  ret void
}

declare dso_local i32 @print_space(...) #1

declare dso_local i64 @scan_for_self_assignment(i8*, i32*) #1

declare dso_local i32 @exp_fold_tree(i32*, i32, i32*) #1

declare dso_local i32 @minfo(i8*, ...) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @exp_print_tree(%struct.TYPE_17__*) #1

declare dso_local i32 @print_nl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
