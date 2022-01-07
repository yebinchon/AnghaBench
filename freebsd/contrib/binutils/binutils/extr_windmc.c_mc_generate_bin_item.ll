; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_mc_generate_bin_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_mc_generate_bin_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bin_messagetable_item = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@mcset_bin_out_is_unicode = common dso_local global i32 0, align 4
@mcset_automatic_null_termination = common dso_local global i64 0, align 8
@BIN_MESSAGETABLE_ITEM_SIZE = common dso_local global i32 0, align 4
@MESSAGE_RESOURCE_UNICODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to convert message to language codepage.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bin_messagetable_item* (%struct.TYPE_7__*, i32*)* @mc_generate_bin_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bin_messagetable_item* @mc_generate_bin_item(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bin_messagetable_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.bin_messagetable_item* null, %struct.bin_messagetable_item** %5, align 8
  %12 = load i32*, i32** %4, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @mcset_bin_out_is_unicode, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %107

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @unichar_len(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* @mcset_automatic_null_termination, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %50, %28
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 32
  br label %48

48:                                               ; preds = %40, %32, %29
  %49 = phi i1 [ false, %32 ], [ false, %29 ], [ %47, %40 ]
  br i1 %49, label %50, label %56

50:                                               ; preds = %48
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 0, i32* %55, align 4
  br label %29

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %25, %15
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @BIN_MESSAGETABLE_ITEM_SIZE, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 3
  %70 = and i32 %69, -4
  %71 = call %struct.bin_messagetable_item* @res_alloc(i32 %70)
  store %struct.bin_messagetable_item* %71, %struct.bin_messagetable_item** %5, align 8
  %72 = load %struct.bin_messagetable_item*, %struct.bin_messagetable_item** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 3
  %75 = and i32 %74, -4
  %76 = call i32 @memset(%struct.bin_messagetable_item* %72, i32 0, i32 %75)
  %77 = load %struct.bin_messagetable_item*, %struct.bin_messagetable_item** %5, align 8
  %78 = getelementptr inbounds %struct.bin_messagetable_item, %struct.bin_messagetable_item* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 3
  %82 = and i32 %81, -4
  %83 = call i32 @target_put_16(i64 %79, i32 %82)
  %84 = load %struct.bin_messagetable_item*, %struct.bin_messagetable_item** %5, align 8
  %85 = getelementptr inbounds %struct.bin_messagetable_item, %struct.bin_messagetable_item* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @MESSAGE_RESOURCE_UNICODE, align 4
  %88 = call i32 @target_put_16(i64 %86, i32 %87)
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %93, %57
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load %struct.bin_messagetable_item*, %struct.bin_messagetable_item** %5, align 8
  %95 = getelementptr inbounds %struct.bin_messagetable_item, %struct.bin_messagetable_item* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %7, align 8
  %102 = load i32, i32* %100, align 4
  %103 = call i32 @target_put_16(i64 %99, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %8, align 4
  br label %89

106:                                              ; preds = %89
  br label %192

107:                                              ; preds = %2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @codepage_from_unicode(i32* %10, i32* %110, i8** %11, i32 %116)
  %118 = load i8*, i8** %11, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %107
  %121 = call i32 @fatal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %107
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @strlen(i8* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i64, i64* @mcset_automatic_null_termination, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %161

127:                                              ; preds = %122
  %128 = load i32, i32* %9, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %161

130:                                              ; preds = %127
  br label %131

131:                                              ; preds = %154, %130
  %132 = load i32, i32* %9, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = load i8*, i8** %11, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %134
  %144 = load i8*, i8** %11, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp slt i32 %150, 32
  br label %152

152:                                              ; preds = %143, %134, %131
  %153 = phi i1 [ false, %134 ], [ false, %131 ], [ %151, %143 ]
  br i1 %153, label %154, label %160

154:                                              ; preds = %152
  %155 = load i8*, i8** %11, align 8
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  store i8 0, i8* %159, align 1
  br label %131

160:                                              ; preds = %152
  br label %161

161:                                              ; preds = %160, %127, %122
  %162 = load i32, i32* @BIN_MESSAGETABLE_ITEM_SIZE, align 4
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %162, %163
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 3
  %168 = and i32 %167, -4
  %169 = call %struct.bin_messagetable_item* @res_alloc(i32 %168)
  store %struct.bin_messagetable_item* %169, %struct.bin_messagetable_item** %5, align 8
  %170 = load %struct.bin_messagetable_item*, %struct.bin_messagetable_item** %5, align 8
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 3
  %173 = and i32 %172, -4
  %174 = call i32 @memset(%struct.bin_messagetable_item* %170, i32 0, i32 %173)
  %175 = load %struct.bin_messagetable_item*, %struct.bin_messagetable_item** %5, align 8
  %176 = getelementptr inbounds %struct.bin_messagetable_item, %struct.bin_messagetable_item* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 3
  %180 = and i32 %179, -4
  %181 = call i32 @target_put_16(i64 %177, i32 %180)
  %182 = load %struct.bin_messagetable_item*, %struct.bin_messagetable_item** %5, align 8
  %183 = getelementptr inbounds %struct.bin_messagetable_item, %struct.bin_messagetable_item* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @target_put_16(i64 %184, i32 0)
  %186 = load %struct.bin_messagetable_item*, %struct.bin_messagetable_item** %5, align 8
  %187 = getelementptr inbounds %struct.bin_messagetable_item, %struct.bin_messagetable_item* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to i8*
  %190 = load i8*, i8** %11, align 8
  %191 = call i32 @strcpy(i8* %189, i8* %190)
  br label %192

192:                                              ; preds = %161, %106
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 3
  %195 = and i32 %194, -4
  %196 = load i32*, i32** %4, align 8
  store i32 %195, i32* %196, align 4
  %197 = load %struct.bin_messagetable_item*, %struct.bin_messagetable_item** %5, align 8
  ret %struct.bin_messagetable_item* %197
}

declare dso_local i32 @unichar_len(i32*) #1

declare dso_local %struct.bin_messagetable_item* @res_alloc(i32) #1

declare dso_local i32 @memset(%struct.bin_messagetable_item*, i32, i32) #1

declare dso_local i32 @target_put_16(i64, i32) #1

declare dso_local i32 @codepage_from_unicode(i32*, i32*, i8**, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
