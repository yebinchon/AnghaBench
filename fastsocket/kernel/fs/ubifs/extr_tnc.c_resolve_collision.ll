; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_resolve_collision.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_resolve_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qstr = type { i32 }

@NAME_MATCHES = common dso_local global i32 0, align 4
@NAME_GREATER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NAME_LESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, %struct.qstr*)* @resolve_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_collision(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.ubifs_znode** %2, i32* %3, %struct.qstr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %union.ubifs_key*, align 8
  %9 = alloca %struct.ubifs_znode**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.qstr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %8, align 8
  store %struct.ubifs_znode** %2, %struct.ubifs_znode*** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.qstr* %4, %struct.qstr** %11, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %16 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %17 = load %struct.ubifs_znode*, %struct.ubifs_znode** %16, align 8
  %18 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = load %struct.qstr*, %struct.qstr** %11, align 8
  %25 = call i32 @matches_name(%struct.ubifs_info* %15, %struct.TYPE_2__* %23, %struct.qstr* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %6, align 4
  br label %210

33:                                               ; preds = %5
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @NAME_MATCHES, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %210

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @NAME_GREATER, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %145

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %139
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %45 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @tnc_prev(%struct.ubifs_info* %44, %struct.ubifs_znode** %45, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @ubifs_assert(i32 %56)
  %58 = load i32*, i32** %10, align 8
  store i32 -1, i32* %58, align 4
  store i32 0, i32* %6, align 4
  br label %210

59:                                               ; preds = %43
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %210

64:                                               ; preds = %59
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %66 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %67 = load %struct.ubifs_znode*, %struct.ubifs_znode** %66, align 8
  %68 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %76 = call i64 @keys_cmp(%struct.ubifs_info* %65, i32* %74, %union.ubifs_key* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %113

78:                                               ; preds = %64
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %82 = load %struct.ubifs_znode*, %struct.ubifs_znode** %81, align 8
  %83 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 1
  %86 = icmp eq i32 %80, %85
  br i1 %86, label %87, label %112

87:                                               ; preds = %78
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %89 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @tnc_next(%struct.ubifs_info* %88, %struct.ubifs_znode** %89, i32* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %87
  %95 = call i32 @ubifs_assert(i32 0)
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @ENOENT, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %100, %94
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %6, align 4
  br label %210

105:                                              ; preds = %87
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @ubifs_assert(i32 %109)
  %111 = load i32*, i32** %10, align 8
  store i32 -1, i32* %111, align 4
  br label %112

112:                                              ; preds = %105, %78
  store i32 0, i32* %6, align 4
  br label %210

113:                                              ; preds = %64
  %114 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %115 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %116 = load %struct.ubifs_znode*, %struct.ubifs_znode** %115, align 8
  %117 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %121
  %123 = load %struct.qstr*, %struct.qstr** %11, align 8
  %124 = call i32 @matches_name(%struct.ubifs_info* %114, %struct.TYPE_2__* %122, %struct.qstr* %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %6, align 4
  br label %210

129:                                              ; preds = %113
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @NAME_LESS, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 0, i32* %6, align 4
  br label %210

134:                                              ; preds = %129
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @NAME_MATCHES, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 1, i32* %6, align 4
  br label %210

139:                                              ; preds = %134
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @NAME_GREATER, align 4
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @ubifs_assert(i32 %143)
  br label %43

145:                                              ; preds = %38
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %13, align 4
  %148 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %149 = load %struct.ubifs_znode*, %struct.ubifs_znode** %148, align 8
  store %struct.ubifs_znode* %149, %struct.ubifs_znode** %14, align 8
  br label %150

150:                                              ; preds = %145, %204
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %152 = call i32 @tnc_next(%struct.ubifs_info* %151, %struct.ubifs_znode** %14, i32* %13)
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @ENOENT, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store i32 0, i32* %6, align 4
  br label %210

158:                                              ; preds = %150
  %159 = load i32, i32* %12, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %6, align 4
  br label %210

163:                                              ; preds = %158
  %164 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %165 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %166 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %173 = call i64 @keys_cmp(%struct.ubifs_info* %164, i32* %171, %union.ubifs_key* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %163
  store i32 0, i32* %6, align 4
  br label %210

176:                                              ; preds = %163
  %177 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %178 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %179 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %178, i32 0, i32 1
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %182
  %184 = load %struct.qstr*, %struct.qstr** %11, align 8
  %185 = call i32 @matches_name(%struct.ubifs_info* %177, %struct.TYPE_2__* %183, %struct.qstr* %184)
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %176
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %6, align 4
  br label %210

190:                                              ; preds = %176
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* @NAME_GREATER, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  store i32 0, i32* %6, align 4
  br label %210

195:                                              ; preds = %190
  %196 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %197 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  store %struct.ubifs_znode* %196, %struct.ubifs_znode** %197, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load i32*, i32** %10, align 8
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @NAME_MATCHES, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  store i32 1, i32* %6, align 4
  br label %210

204:                                              ; preds = %195
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* @NAME_LESS, align 4
  %207 = icmp eq i32 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @ubifs_assert(i32 %208)
  br label %150

210:                                              ; preds = %203, %194, %188, %175, %161, %157, %138, %133, %127, %112, %103, %62, %52, %37, %31
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i32 @matches_name(%struct.ubifs_info*, %struct.TYPE_2__*, %struct.qstr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tnc_prev(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i64 @keys_cmp(%struct.ubifs_info*, i32*, %union.ubifs_key*) #1

declare dso_local i32 @tnc_next(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
