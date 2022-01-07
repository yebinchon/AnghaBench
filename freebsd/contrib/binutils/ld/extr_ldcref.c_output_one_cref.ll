; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldcref.c_output_one_cref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldcref.c_output_one_cref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.cref_hash_entry = type { i8*, %struct.cref_ref*, %struct.TYPE_8__ }
%struct.cref_ref = type { %struct.TYPE_14__*, i64, %struct.cref_ref* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32 }

@link_info = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%P: symbol `%T' missing from main hash table\0A\00", align 1
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@DYNAMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@FILECOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%B\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.cref_hash_entry*)* @output_one_cref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_one_cref(i32* %0, %struct.cref_hash_entry* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cref_hash_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfd_link_hash_entry*, align 8
  %7 = alloca %struct.cref_ref*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.cref_hash_entry* %1, %struct.cref_hash_entry** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @link_info, i32 0, i32 0), align 4
  %9 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %4, align 8
  %10 = getelementptr inbounds %struct.cref_hash_entry, %struct.cref_hash_entry* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FALSE, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32, i32* @TRUE, align 4
  %16 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %8, i32 %12, i32 %13, i32 %14, i32 %15)
  store %struct.bfd_link_hash_entry* %16, %struct.bfd_link_hash_entry** %6, align 8
  %17 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %18 = icmp eq %struct.bfd_link_hash_entry* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %4, align 8
  %21 = getelementptr inbounds %struct.cref_hash_entry, %struct.cref_hash_entry* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @einfo(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %92

25:                                               ; preds = %2
  %26 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %27 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @bfd_link_hash_defined, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %91

31:                                               ; preds = %25
  %32 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %33 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %173

41:                                               ; preds = %31
  %42 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %43 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %90

50:                                               ; preds = %41
  %51 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %52 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DYNAMIC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %50
  %64 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %4, align 8
  %65 = getelementptr inbounds %struct.cref_hash_entry, %struct.cref_hash_entry* %64, i32 0, i32 1
  %66 = load %struct.cref_ref*, %struct.cref_ref** %65, align 8
  store %struct.cref_ref* %66, %struct.cref_ref** %7, align 8
  br label %67

67:                                               ; preds = %81, %63
  %68 = load %struct.cref_ref*, %struct.cref_ref** %7, align 8
  %69 = icmp ne %struct.cref_ref* %68, null
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load %struct.cref_ref*, %struct.cref_ref** %7, align 8
  %72 = getelementptr inbounds %struct.cref_ref, %struct.cref_ref* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DYNAMIC, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %85

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.cref_ref*, %struct.cref_ref** %7, align 8
  %83 = getelementptr inbounds %struct.cref_ref, %struct.cref_ref* %82, i32 0, i32 2
  %84 = load %struct.cref_ref*, %struct.cref_ref** %83, align 8
  store %struct.cref_ref* %84, %struct.cref_ref** %7, align 8
  br label %67

85:                                               ; preds = %79, %67
  %86 = load %struct.cref_ref*, %struct.cref_ref** %7, align 8
  %87 = icmp eq %struct.cref_ref* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %173

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %50, %41
  br label %91

91:                                               ; preds = %90, %25
  br label %92

92:                                               ; preds = %91, %19
  %93 = load i32*, i32** %3, align 8
  %94 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %4, align 8
  %95 = getelementptr inbounds %struct.cref_hash_entry, %struct.cref_hash_entry* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @fprintf(i32* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  %98 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %4, align 8
  %99 = getelementptr inbounds %struct.cref_hash_entry, %struct.cref_hash_entry* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  %103 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %4, align 8
  %104 = getelementptr inbounds %struct.cref_hash_entry, %struct.cref_hash_entry* %103, i32 0, i32 1
  %105 = load %struct.cref_ref*, %struct.cref_ref** %104, align 8
  store %struct.cref_ref* %105, %struct.cref_ref** %7, align 8
  br label %106

106:                                              ; preds = %131, %92
  %107 = load %struct.cref_ref*, %struct.cref_ref** %7, align 8
  %108 = icmp ne %struct.cref_ref* %107, null
  br i1 %108, label %109, label %135

109:                                              ; preds = %106
  %110 = load %struct.cref_ref*, %struct.cref_ref** %7, align 8
  %111 = getelementptr inbounds %struct.cref_ref, %struct.cref_ref* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %119, %114
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @FILECOL, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @putc(i8 signext 32, i32* %120)
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %115

124:                                              ; preds = %115
  %125 = load i32*, i32** %3, align 8
  %126 = load %struct.cref_ref*, %struct.cref_ref** %7, align 8
  %127 = getelementptr inbounds %struct.cref_ref, %struct.cref_ref* %126, i32 0, i32 0
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = call i32 @lfinfo(i32* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_14__* %128)
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %124, %109
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.cref_ref*, %struct.cref_ref** %7, align 8
  %133 = getelementptr inbounds %struct.cref_ref, %struct.cref_ref* %132, i32 0, i32 2
  %134 = load %struct.cref_ref*, %struct.cref_ref** %133, align 8
  store %struct.cref_ref* %134, %struct.cref_ref** %7, align 8
  br label %106

135:                                              ; preds = %106
  %136 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %4, align 8
  %137 = getelementptr inbounds %struct.cref_hash_entry, %struct.cref_hash_entry* %136, i32 0, i32 1
  %138 = load %struct.cref_ref*, %struct.cref_ref** %137, align 8
  store %struct.cref_ref* %138, %struct.cref_ref** %7, align 8
  br label %139

139:                                              ; preds = %164, %135
  %140 = load %struct.cref_ref*, %struct.cref_ref** %7, align 8
  %141 = icmp ne %struct.cref_ref* %140, null
  br i1 %141, label %142, label %168

142:                                              ; preds = %139
  %143 = load %struct.cref_ref*, %struct.cref_ref** %7, align 8
  %144 = getelementptr inbounds %struct.cref_ref, %struct.cref_ref* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %152, %147
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @FILECOL, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @putc(i8 signext 32, i32* %153)
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %148

157:                                              ; preds = %148
  %158 = load i32*, i32** %3, align 8
  %159 = load %struct.cref_ref*, %struct.cref_ref** %7, align 8
  %160 = getelementptr inbounds %struct.cref_ref, %struct.cref_ref* %159, i32 0, i32 0
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = call i32 @lfinfo(i32* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_14__* %161)
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %157, %142
  br label %164

164:                                              ; preds = %163
  %165 = load %struct.cref_ref*, %struct.cref_ref** %7, align 8
  %166 = getelementptr inbounds %struct.cref_ref, %struct.cref_ref* %165, i32 0, i32 2
  %167 = load %struct.cref_ref*, %struct.cref_ref** %166, align 8
  store %struct.cref_ref* %167, %struct.cref_ref** %7, align 8
  br label %139

168:                                              ; preds = %139
  %169 = load i32, i32* %5, align 4
  %170 = icmp eq i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @ASSERT(i32 %171)
  br label %173

173:                                              ; preds = %168, %88, %40
  ret void
}

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i32, i32, i32, i32) #1

declare dso_local i32 @einfo(i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @lfinfo(i32*, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
